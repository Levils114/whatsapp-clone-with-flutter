import 'package:flutter/material.dart';

Widget conversationItem(
    String url, String name, String lastMessage, String time, bool view) {
  return InkWell(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(url),
            radius: 25.0,
          ),
          SizedBox(
            height: 8.0,
            width: 12.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(name,
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w700)),
                    ),
                    Text(time)
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Expanded(child: Text(lastMessage)),
                    !!view
                        ? Icon(Icons.check_circle_outline,
                            color: Colors.green, size: 16.0)
                        : Icon(Icons.check_circle_outline,
                            color: Colors.grey, size: 16.0)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
