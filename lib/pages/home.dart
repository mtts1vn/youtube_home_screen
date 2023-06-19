import 'package:flutter/material.dart';
import 'package:youtube_home/pages/configInfos.dart';
import 'package:youtube_home/repositories/videosRepo.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/youtube.png',
                    scale: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'YouTube',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Icon(
                    Icons.cast,
                    size: HomePageConfig.iconsAppBarSize,
                  ),
                  SizedBox(width: HomePageConfig.gap),
                  Icon(
                    Icons.notifications_active_outlined,
                    size: HomePageConfig.iconsAppBarSize,
                  ),
                  SizedBox(width: HomePageConfig.gap),
                  Icon(
                    Icons.search,
                    size: HomePageConfig.iconsAppBarSize,
                  ),
                  SizedBox(width: HomePageConfig.gap),
                  CircleAvatar(
                    backgroundColor: Colors.cyan,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(HomePageConfig.bodyPadding),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                height: 35,
                child: Row(
                  children: [
                    Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: HomePageConfig.tabs.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 2, left: 2),
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 7.0,
                                      bottom: 7.0,
                                      left: 15.0,
                                      right: 15.0),
                                  child: Text(
                                    HomePageConfig.tabs[index],
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: ListView.builder(
                  itemCount: VideoRepositorie.videos.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 2, bottom: 2),
                      child: VideoRepositorie.videos[index],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
