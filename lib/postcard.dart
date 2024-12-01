import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Postcard extends StatelessWidget {
  const Postcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/Ellipse 6.png',
                        fit: BoxFit.cover,
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),
                  const SizedBox(width: 14),
                  const Column(
                    children: [
                      Text('Route'),
                      Row(
                        children: [
                          Text('8h .'),
                          Icon(
                            CupertinoIcons.circle_grid_hex_fill,
                            size: 15,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Image.asset('assets/images/treedot.png'),
            ],
          ),
        ),
        Image.asset('assets/images/Rectangle 10.png'),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(CupertinoIcons.heart_fill),
                  SizedBox(width: 5),
                  Icon(Icons.mode_comment_sharp),
                  SizedBox(width: 5),
                  Icon(Icons.share),
                ],
              ),
              Icon(
                Icons.save,
              ),
            ],
          ),
        ),
        const Divider(
          color: Colors.black,
          thickness: 1,
        ),
      ],
    );
  }
}
