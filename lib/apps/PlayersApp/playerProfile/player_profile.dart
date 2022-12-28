import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:green_cleats/apps/PlayersApp/playerProfile/player_profile_edit.dart';
import 'package:green_cleats/nav/bottom_nav.dart';
import 'package:green_cleats/utils/colors.dart';
import 'package:green_cleats/widgets/big_text.dart';

List<String> images = [
  "assets/images/greenGC.png",
  "assets/images/pic.jpg",
  "assets/images/blueGC.png"
];

class PlayerProfile extends StatefulWidget {
  const PlayerProfile({super.key});

  @override
  State<PlayerProfile> createState() => _PlayerProfileState();
}

class _PlayerProfileState extends State<PlayerProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProfileEditMode()),
          );
        },
        label: const Text('Edit'),
        icon: const Icon(Icons.edit_note),
        backgroundColor: AppColors.animationBlueColor,
      ),
      appBar: AppBar(
        title: Image.asset(
          'assets/images/greenGC.png',
          fit: BoxFit.cover,
          height: 100,
          width: 100,
        ),
        backgroundColor: AppColors.animationBlueColor,
        elevation: 20,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            tooltip: 'Notifications',
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Notifications')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.chat_rounded),
            tooltip: 'Player chat',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Private Messaging')));
            },
          ),
          IconButton(
            onPressed: () => {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => PlayerProfile()),
              // )
            },
            padding: EdgeInsets.only(top: 1, bottom: 1, left: 1, right: 4),
            icon: CircleAvatar(
              radius: 300.0,
              backgroundColor: AppColors.khakiColor,
              child: const Padding(
                padding: EdgeInsets.all(2.0),
                child: CircleAvatar(
                  radius: 100.0,
                  backgroundImage: NetworkImage('assets/images/pic.jpg'),
                ),
              ),
            ),
          ),
          // icon: CircleAvatar(
          //   radius: 30.0,
          //   // backgroundImage: NetworkImage('assets/images/pic.jpg'),
          //   backgroundColor: AppColors.khakiColor,
          //   child: Padding(
          //     padding: const EdgeInsets.all(4.0),
          //     child: ClipOval(
          //         // clipper: MyClipper(),
          //         child: Image.network(
          //           'assets/images/pic.jpg',
          //           // fit: BoxFit.contain,
          //           // width: 100,
          //           // height: 100,
          //         )),
          //   ),
          // child: Padding(
          //     padding: const EdgeInsets.all(2), // Border radius
          //     child: GestureDetector(
          //       onTap: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => PlayerProfile()),
          //         );
          //       },
          //       child: ClipOval(
          //           child: Image.network(
          //         'assets/images/pic.jpg',
          //         fit: BoxFit.cover,
          //         width: 80,
          //         height: 80,
          //       )),
          //     )),

          // IconButton(
          //   icon: const Icon(Icons.navigate_next),
          //   tooltip: 'Go to the next page',
          //   onPressed: () {
          //     Navigator.push(context, MaterialPageRoute<void>(
          //       builder: (BuildContext context) {
          //         return Scaffold(
          //           appBar: AppBar(
          //             title: const Text('Next page'),
          //           ),
          //           body: const Center(
          //             child: Text(
          //               'This is the next page',
          //               style: TextStyle(fontSize: 24),
          //             ),
          //           ),
          //         );
          //       },
          //     ));
          //   },
          // ),
        ],
      ),
      backgroundColor: AppColors.backgroundColor,
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 30.0, left: 10, right: 10, bottom: 0),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor: AppColors.khakiColor,
                          radius: 70,
                          child: const CircleAvatar(
                            backgroundImage:
                                NetworkImage('assets/images/pic.jpg'),
                            radius: 68,
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 4,
                                      color: AppColors.backgroundColor),
                                  color: AppColors.animationBlueColor),
                              child: Icon(
                                Icons.edit,
                                color: AppColors.whiteColor,
                              ),
                            ))
                      ],
                    ),
                    VerticalDivider(
                      width: 20,
                      thickness: 5,
                      // indent: 20,
                      // endIndent: 0,
                      color: AppColors.khakiColor,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                          text: "Shayan Ali Mankani",
                          size: 22,
                          color: AppColors.animationGreenColor,
                        ),
                        RichText(
                            text: TextSpan(
                          text: "Position: ",
                          style: TextStyle(
                              color: AppColors.animationGreenColor,
                              fontSize: 22,
                              fontStyle: FontStyle.italic),
                          children: <TextSpan>[
                            TextSpan(
                              text: "CAM",
                              style: TextStyle(
                                  color: AppColors.animationBlueColor,
                                  fontSize: 22,
                                  fontStyle: FontStyle.normal),
                            ),
                          ],
                        )),
                        RichText(
                            text: TextSpan(
                          text: "Age: ",
                          style: TextStyle(
                              color: AppColors.animationGreenColor,
                              fontSize: 22,
                              fontStyle: FontStyle.italic),
                          children: <TextSpan>[
                            TextSpan(
                              text: "22",
                              style: TextStyle(
                                  color: AppColors.animationBlueColor,
                                  fontSize: 22,
                                  fontStyle: FontStyle.normal),
                            ),
                          ],
                        )),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 18.0, left: 12.0, right: 12.0, bottom: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        "Description",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            color: AppColors.animationGreenColor),
                        // textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "Started playing football in 2011/12, 5+ years of experience as a captain. Furthermore, have also worked as a fitness trainer with two teams.",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            color: AppColors.animationBlueColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        "Achievements",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            color: AppColors.animationGreenColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "-",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            color: AppColors.animationBlueColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        "Experience",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            color: AppColors.animationGreenColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "12 years",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            color: AppColors.animationBlueColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        "Ratings",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            color: AppColors.animationGreenColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Text(
                            "Skill",
                            style: TextStyle(
                                fontSize: 14,
                                color: AppColors.animationBlueColor),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 3.0, right: 0, top: 0, bottom: 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.star, color: AppColors.khakiColor),
                                Icon(Icons.star, color: AppColors.khakiColor),
                                Icon(Icons.star, color: AppColors.khakiColor),
                                const Icon(Icons.star, color: Colors.grey),
                                const Icon(Icons.star, color: Colors.grey),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        "Current Teams",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            color: AppColors.animationGreenColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "Targaryens United",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            color: AppColors.animationBlueColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "Images",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            color: AppColors.animationGreenColor),
                      ),
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      itemCount: images.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 4.0,
                              mainAxisSpacing: 4.0),
                      itemBuilder: (BuildContext context, int index) {
                        return GridTile(
                          child: InkWell(
                              onTap: () async {
                                await showDialog(
                                    context: context,
                                    builder: (_) => ImageDialog(index));
                              },
                              child: Image.network(images[index])),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

ImageDialog(int index) {
  return Dialog(
    child: Container(
      width: 200,
      height: 500,
      decoration: BoxDecoration(
          color: AppColors.blackColor,
          image: DecorationImage(
              image: ExactAssetImage(images[index]), fit: BoxFit.contain)),
    ),
  );
}
