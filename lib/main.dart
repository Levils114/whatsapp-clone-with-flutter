import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/conversations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Whatsapp Clone',
        debugShowCheckedModeBanner: false,
        home: Conversations());
  }
}
