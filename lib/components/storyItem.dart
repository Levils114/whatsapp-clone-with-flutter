import 'package:flutter/material.dart';

Widget storyItem(String url, String name) {
  return Padding(
    padding: const EdgeInsets.only(right: 12.0),
    child: Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(url),
          radius: 30.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(name,
            style: TextStyle(
                color: Colors.white,
                fontSize: 12.0,
                fontWeight: FontWeight.w600))
      ],
    ),
  );
}
