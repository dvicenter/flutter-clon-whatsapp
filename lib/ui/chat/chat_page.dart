import 'package:clon_whatsapp/models/chat_model.dart';
import 'package:clon_whatsapp/ui/chat/room/chat_room.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  void handlerTabChat(ChatModel chat) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => ChatRoom(
          name: chat.name,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messageData.length,
      itemBuilder: (context, index) {
        final chat = messageData[index];
        return Column(
          children: [
            Divider(
              height: 10.0,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  chat.imageUrl,
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    chat.name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    chat.time,
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
                  chat.message,
                  style: TextStyle(color: Colors.grey, fontSize: 15.0),
                ),
              ),
              onTap: () => handlerTabChat(chat),
            ),
          ],
        );
      },
    );
  }
}
