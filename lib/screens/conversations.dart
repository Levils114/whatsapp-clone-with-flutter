import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/conversationItem.dart';
import 'package:whatsapp_clone/components/storyItem.dart';
import 'package:whatsapp_clone/utils/users.dart';

class Conversations extends StatefulWidget {
  @override
  _ConversationsState createState() => _ConversationsState();
}

class _ConversationsState extends State<Conversations> {
  @override
  Widget build(BuildContext context) {
    print(imageUrls.length);

    return Scaffold(
      backgroundColor: Color(0xFF128C7E),
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Whatsapp Clone"),
        backgroundColor: Color(0xFF128C7E),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
        ],
      ),
      body: Column(
        children: [
          Container(
              height: 100.0,
              child: ListView.builder(
                padding: const EdgeInsets.only(right: 12.0, left: 12.0),
                scrollDirection: Axis.horizontal,
                itemCount: imageUrls.length,
                itemBuilder: (_, int index) {
                  return storyItem(imageUrls[index], 'Levi Siebra');
                },
              )),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
              ),
              child: Padding(
                  padding:
                      const EdgeInsets.only(left: 12.0, right: 12.0, top: 10.0),
                  child: ListView.builder(
                    itemCount: imageUrls.length,
                    itemBuilder: (_, int index) {
                      return conversationItem(imageUrls[index], 'Levi Siebra',
                          'eae man, blz?', '12:58', true);
                    },
                  )),
            ),
          )
        ],
      ),
    );
  }
}
