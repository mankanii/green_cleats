import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:green_cleats/apps/PlayersApp/Blogs/Article.dart';
import 'package:green_cleats/apps/PlayersApp/Blogs/blog.dart';
import 'package:green_cleats/utils/colors.dart';
import 'package:green_cleats/widgets/big_text.dart';
import 'package:http/http.dart' as http;

Future<List<Article>> fetchArticle() async {
  final response = await http.get(Uri.parse('http://localhost:3000/viewBlogs'));

  if (response.statusCode == 200) {
    // final List<dynamic> result = jsonDecode(response.body)["blogs"];
    final List result = json.decode(response.body)["blogs"];
    print(result);
    return result.map((e) => Article.fromJson(e)).toList();
  } else {
    throw Exception('Failed to load data');
  }
}

List<Map> articles = [];

// {
//   "category": "International News",
//   "title": "Is UCL race over?",
//   "author": "Unknown",
//   "date": "12/12/22",
// },
// {
//   "category": "Pakistan Football",
//   "title": "The ban is officially over",
//   "author": "Unknown",
//   "date": "12/12/22",
// },
// {
//   "category": "Karachi",
//   "title": "New futsal court in Town: Airfield",
//   "author": "Unknown",
//   "date": "12/12/22",
// },
// {
//   "category": "",
//   "title": "",
//   "author": "Unknown",
//   "date": "12/12/22",
// },
// ];

class BlogsPage extends StatefulWidget {
  const BlogsPage({super.key});

  @override
  State<BlogsPage> createState() {
    fetchArticle();
    return _BlogsPageState();
  }
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
                              const Hero(
                                tag: "blogImage",
                                child: Image(
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
                            Center(
                              child: FutureBuilder<List<Article>>(
                                future: fetchArticle(),
                                builder: (context, snapshot) {
                                  if (snapshot.hasData) {
                                    return ListView.separated(
                                      shrinkWrap: true,
                                      primary: false,
                                      padding: const EdgeInsets.all(16.0),
                                      itemCount: snapshot.data!.length,
                                      itemBuilder: (context, index) {
                                        // return _buildArticleItem(
                                        //     context, index);
                                        return Stack(
                                          children: <Widget>[
                                            Card(
                                              child: InkWell(
                                                splashColor: AppColors
                                                    .animationBlueColor,
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            BlogPage()),
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
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Text(
                                                            snapshot
                                                                .data![index]
                                                                .category
                                                                .toString(),
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: TextStyle(
                                                              color: AppColors
                                                                  .animationGreenColor,
                                                              // fontWeight: FontWeight.bold,
                                                              fontSize: 15.0,
                                                            ),
                                                          ),
                                                          Text(
                                                            snapshot
                                                                .data![index]
                                                                .title
                                                                .toString(),
                                                            // textAlign: TextAlign.justify,
                                                            overflow:
                                                                TextOverflow
                                                                    .visible,
                                                            style: TextStyle(
                                                              color: AppColors
                                                                  .animationBlueColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 20.0,
                                                            ),
                                                          ),
                                                          Text.rich(
                                                            TextSpan(
                                                              children: [
                                                                const WidgetSpan(
                                                                  child: SizedBox(
                                                                      width:
                                                                          5.0),
                                                                ),
                                                                TextSpan(
                                                                    text: snapshot
                                                                        .data![
                                                                            index]
                                                                        .author
                                                                        .toString(),
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            16.0)),
                                                                const WidgetSpan(
                                                                  child: SizedBox(
                                                                      width:
                                                                          20.0),
                                                                ),
                                                                const WidgetSpan(
                                                                  child: SizedBox(
                                                                      width:
                                                                          5.0),
                                                                ),
                                                                TextSpan(
                                                                  text: snapshot
                                                                      .data![
                                                                          index]
                                                                      .date
                                                                      .toString(),
                                                                ),
                                                              ],
                                                            ),
                                                            style: TextStyle(
                                                                height: 2.0),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                      separatorBuilder: (context, index) =>
                                          const SizedBox(height: 16.0),
                                    );
                                  } else if (snapshot.hasError) {
                                    return Text('${snapshot.error}');
                                  }
                                  return const CircularProgressIndicator();
                                },
                              ),
                            ),
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
