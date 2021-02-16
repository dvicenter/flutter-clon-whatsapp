import 'package:clon_whatsapp/models/chat_model.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messageData.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Divider(
              height: 10.0,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  messageData[index].imageUrl,
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    messageData[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    messageData[index].time,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
              subtitle: Container(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  messageData[index].message,
                  style: TextStyle(color: Colors.grey, fontSize: 15.0),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
