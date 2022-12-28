import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:green_cleats/utils/colors.dart';

import '../../../widgets/big_text.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({super.key});

  @override
  State<BlogPage> createState() => BlogPageState();
}

class BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Hero(
                  tag: "blogImage",
                  child: Image.network(
                    "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
                    height: 350.0,
                    width: size.width,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              child: Column(
                children: [
                  Text("International News",
                      style: TextStyle(
                          fontSize: 14.0,
                          color: AppColors.animationGreenColor)),
                  Text(
                    "Is UCL race over?",
                    style: TextStyle(
                        fontSize: 24.0,
                        color: AppColors.animationBlueColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    thickness: 1.0,
                    color: AppColors.animationBlueColor.withOpacity(0.08),
                    height: 32.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/pic.jpg",
                        height: 40.0,
                        width: 40.0,
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      Expanded(
                          child: Text(
                        "Aadesh Kumar",
                        style: TextStyle(
                            color:
                                AppColors.animationBlueColor.withOpacity(0.8),
                            fontSize: 15.0),
                      )),
                      Text(
                        "12 December, 2022",
                        style: TextStyle(
                            color:
                                AppColors.animationBlueColor.withOpacity(0.8),
                            fontSize: 15.0),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1.0,
                    color: AppColors.animationBlueColor.withOpacity(0.08),
                    height: 32.0,
                  ),
                  Text(
                    "Xavi is hopefull that Barcelona still have a chance to qualify. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(
                        fontSize: 16.0, color: AppColors.animationBlueColor),
                  ),
                  Container(
                    height: 64.0,
                    width: size.width,
                    margin: EdgeInsets.only(top: 16.0),
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.edit,
                          color: AppColors.animationBlueColor,
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Write a comment ...",
                              hintStyle: TextStyle(
                                  color: AppColors.animationBlueColor,
                                  fontSize: 16.0),
                            ),
                          ),
                        ),
                        IconButton(
                          color: AppColors.animationBlueColor,
                          icon: Icon(Icons.send),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppColors.animationBlueColor,
      ),
      // body: ListView(
      //   padding: const EdgeInsets.all(8),
      //   children: [
      //     Column(
      //         mainAxisAlignment: MainAxisAlignment.start,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           Card(
      //             child: Padding(
      //               padding: const EdgeInsets.all(15.0),
      //               child: Column(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   const Image(
      //                     image: NetworkImage(
      //                         'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
      //                   ),
      //                   BigText(
      //                     text: "International News",
      //                     color: AppColors.animationGreenColor,
      //                     size: 18,
      //                   ),
      //                   const ListTile(
      //                     contentPadding: EdgeInsets.all(0),
      //                     title: Text('Is UCL race over?',
      //                         style: TextStyle(fontSize: 24)),
      //                     subtitle: Text(
      //                       'Xavi is hopefull that Barcelona still have a chance to qualify.',
      //                       style: TextStyle(fontSize: 20),
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ),
      //         ]),
      //   ],
      // ),
    );
  }
}
