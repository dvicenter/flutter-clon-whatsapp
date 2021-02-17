import 'package:flutter/material.dart';

class ChatRoom extends StatefulWidget {
  final String name;
  ChatRoom({this.name});
  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(widget.name),
    );
  }
}
