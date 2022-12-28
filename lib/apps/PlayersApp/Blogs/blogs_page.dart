import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:green_cleats/apps/PlayersApp/Blogs/blog.dart';
import 'package:green_cleats/utils/colors.dart';
import 'package:green_cleats/widgets/big_text.dart';

final List<Map> articles = [
  {
    "category": "International News",
    "title": "Is UCL race over?",
    "author": "Unknown",
    "date": "12/12/22",
  },
  {
    "category": "Pakistan Football",
    "title": "The ban is officially over",
    "author": "Unknown",
    "date": "12/12/22",
  },
  {
    "category": "Karachi",
    "title": "New futsal court in Town: Airfield",
    "author": "Unknown",
    "date": "12/12/22",
  },
  {
    "category": "",
    "title": "",
    "author": "Unknown",
    "date": "12/12/22",
  },
];

class BlogsPage extends StatefulWidget {
  const BlogsPage({super.key});

  @override
  State<BlogsPage> createState() => _BlogsPageState();
}

class _BlogsPageState extends State<BlogsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          Expanded(
            child: ListView(
              // shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          splashColor: AppColors.animationBlueColor,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BlogPage()),
                            );
                            debugPrint('Card tapped.');
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Hero(
                                tag: "blogImage",
                                child: const Image(
                                  image: NetworkImage(
                                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                ),
                              ),
                              BigText(
                                text: "International News",
                                color: AppColors.animationGreenColor,
                                size: 16,
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                title: Text('Is UCL race over?',
                                    style: TextStyle(
                                        fontSize: 24,
                                        color: AppColors.animationBlueColor,
                                        fontWeight: FontWeight.bold)),
                                subtitle: Text(
                                  'Xavi is hopefull that Barcelona still have a chance to qualify.',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: AppColors.blackColor
                                          .withOpacity(0.8)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        color: AppColors.whiteColor,
                        child: Column(
                          children: [
                            BigText(
                              text: "Latest News",
                              color: AppColors.animationGreenColor,
                              size: 20,
                            ),
                            ListView.separated(
                              shrinkWrap: true,
                              primary: false,
                              padding: const EdgeInsets.all(16.0),
                              itemCount: articles.length,
                              itemBuilder: (context, index) {
                                return _buildArticleItem(context, index);
                              },
                              separatorBuilder: (context, index) =>
                                  const SizedBox(height: 16.0),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.all(8.0),
                            //   child: Card(
                            //     child: InkWell(
                            //       splashColor: AppColors.animationBlueColor,
                            //       onTap: () {
                            //         Navigator.push(
                            //           context,
                            //           MaterialPageRoute(
                            //               builder: (context) => BlogPage()),
                            //         );
                            //         debugPrint('Card tapped.');
                            //       },
                            //       child: Row(
                            //         children: [
                            //           Image.network(
                            //             'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                            //             width: 100.0,
                            //             height: 100.0,
                            //           ),
                            //           Padding(
                            //             padding: const EdgeInsets.all(8.0),
                            //             child: Column(
                            //               crossAxisAlignment:
                            //                   CrossAxisAlignment.start,
                            //               children: [
                            //                 BigText(
                            //                   text: "International News",
                            //                   size: 18,
                            //                   color:
                            //                       AppColors.animationGreenColor,
                            //                 ),
                            //                 BigText(
                            //                   text: "Is UCL race over?",
                            //                   color: AppColors.blackColor,
                            //                   size: 20,
                            //                 )
                            //               ],
                            //             ),
                            //           ),
                            //         ],
                            //       ),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildArticleItem(context, int index) {
  Map article = articles[index];
  // final String sample = images[2];
  return Stack(
    children: <Widget>[
      Card(
        child: InkWell(
          splashColor: AppColors.animationBlueColor,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BlogPage()),
            );
            debugPrint('Card tapped.');
          },
          child: Row(
            children: <Widget>[
              Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                width: 100.0,
                height: 100.0,
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      article["category"],
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: AppColors.animationGreenColor,
                        // fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                    Text(
                      article["title"],
                      // textAlign: TextAlign.justify,
                      overflow: TextOverflow.visible,
                      style: TextStyle(
                        color: AppColors.animationBlueColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          WidgetSpan(
                            child: const SizedBox(width: 5.0),
                          ),
                          TextSpan(
                              text: article["author"],
                              style: TextStyle(fontSize: 16.0)),
                          WidgetSpan(
                            child: const SizedBox(width: 20.0),
                          ),
                          WidgetSpan(
                            child: const SizedBox(width: 5.0),
                          ),
                          TextSpan(
                            text: article["date"],
                          ),
                        ],
                      ),
                      style: TextStyle(height: 2.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // Container(
      //   width: 90,
      //   height: 90,
      //   color: AppColors.animationGreenColor,
      // ),
      // Container(
      //   color: Colors.white,
      //   padding: const EdgeInsets.all(16.0),
      //   margin: const EdgeInsets.all(16.0),
      //   child: Row(
      //     children: <Widget>[
      //       Container(
      //         height: 100,
      //         color: Colors.blue,
      //         width: 80.0,
      //         // child: PNetworkImage(
      //         //   sample,
      //         //   fit: BoxFit.cover,
      //         // ),
      //       ),
      //       const SizedBox(width: 20.0),
      //       Expanded(
      //         child: Column(
      //           children: <Widget>[
      //             Text(
      //               article["category"],
      //               textAlign: TextAlign.justify,
      //               style: TextStyle(
      //                 color: AppColors.animationGreenColor,
      //                 // fontWeight: FontWeight.bold,
      //                 fontSize: 18.0,
      //               ),
      //             ),
      //             Text(
      //               article["title"],
      //               // textAlign: TextAlign.justify,
      //               style: TextStyle(
      //                 color: AppColors.blackColor,
      //                 fontWeight: FontWeight.bold,
      //                 fontSize: 20.0,
      //               ),
      //             ),
      //             Text.rich(
      //               TextSpan(
      //                 children: [
      //                   WidgetSpan(
      //                     child: CircleAvatar(
      //                       radius: 15.0,
      //                       backgroundColor: AppColors.khakiColor,
      //                     ),
      //                   ),
      //                   WidgetSpan(
      //                     child: const SizedBox(width: 5.0),
      //                   ),
      //                   TextSpan(
      //                       text: article["author"],
      //                       style: TextStyle(fontSize: 16.0)),
      //                   WidgetSpan(
      //                     child: const SizedBox(width: 20.0),
      //                   ),
      //                   WidgetSpan(
      //                     child: const SizedBox(width: 5.0),
      //                   ),
      //                   TextSpan(
      //                     text: article["time"],
      //                   ),
      //                 ],
      //               ),
      //               style: TextStyle(height: 2.0),
      //             ),
      //           ],
      //         ),
      //       )
      //     ],
      //   ),
      // )
    ],
  );
}
