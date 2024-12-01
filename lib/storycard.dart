import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  String image;

  StoryCard({required this.image});

  @override
  Widget build(BuildContext context) {
    double widthStoryCard = MediaQuery.of(context).size.width;
    double heightStoryCard = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      width: widthStoryCard * 0.25,
      height: heightStoryCard * 0.18,
      child: Stack(
        children: [
          Image.asset(image),
          Positioned(
            bottom: 30,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(
                      side: BorderSide(color: Colors.white),
                    ), // Adjust padding for the button size
                  ),
                  child: const Icon(
                    CupertinoIcons.plus_circle_fill,
                    size: 40,
                  )),
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Text('Create a \n story ..'),
          ),
        ],
      ),
    );
  }
}
