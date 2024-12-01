import 'package:facebook/postcard.dart';
import 'package:facebook/storycard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cardmodel.dart';

class FaceScreen extends StatelessWidget {
  static const String routeName = 'face';

  @override
  Widget build(BuildContext context) {
    List<CardModel> cardIntry = [];

    for (int i = 0; i <= 7; i++) {
      cardIntry.add(
          CardModel(image: "assets/images/wallpaperflare.com_wallpaper.png"));
    }

    return DefaultTabController(
      length: 6, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.tv)),
              Tab(icon: Icon(Icons.store)),
              Tab(icon: Icon(Icons.person)),
              Tab(icon: Icon(Icons.notifications)),
              Tab(icon: Icon(Icons.person)),
            ],
          ),
          title: Image.asset(
            'assets/images/Facebook.png',
            width: 156,
            height: 36,
          ),
          actions: [
            const Padding(
              padding: EdgeInsets.only(right: 6.0),
              child: Icon(CupertinoIcons.plus_circle_fill),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 6.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Image.asset('assets/images/Messenger.png'),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/wallpaperflare.com_wallpaper.png',
                          fit: BoxFit.cover,
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'What\'s in Your Mind ?',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintStyle: TextStyle(color: Colors.black38),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.image_outlined,
                      color: Colors.green,
                      size: 30,
                    ),
                  ],
                ),
              ),
              const Divider(),

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                child: SizedBox(
                  // width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const SizedBox(width: 10);
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: cardIntry.length,
                    itemBuilder: (context, index) {
                      return StoryCard(image: cardIntry[index].image);
                    },
                  ),
                ),
              ),
              const Divider(),
              // Vertical ListView
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true, // Allows the ListView to wrap its content
                itemCount: 20,
                itemBuilder: (context, index) {
                  return const Postcard();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
