import 'package:flutter/material.dart';

class ChatRoom extends StatefulWidget {
  final String name;
  ChatRoom({this.name});
  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> with TickerProviderStateMixin {
  final TextEditingController _textController = TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];

  void _handledSubmid(String text) {
    ChatMessage message = ChatMessage(
      text: text,
      animationController: AnimationController(
        duration: Duration(milliseconds: 700),
        vsync: this,
      ),
      name: widget.name,
    );

    setState(() {
      _messages.insert(0, message);
    });

    message.animationController.forward();
    print(text);
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(
        color: Theme.of(context).accentColor,
      ),
      child: Container(
        child: Row(
          children: [
            Flexible(
              child: TextField(
                controller: _textController,
              ),
            ),
            Container(
              child: IconButton(
                icon: Icon(Icons.send),
                onPressed: () => _handledSubmid(_textController.text),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: Container(
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                itemCount: _messages.length,
                itemBuilder: (_, index) => _messages[index],
              ),
            ),
            Divider(
              height: 1.0,
            ),
            Container(
              child: _buildTextComposer(),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final String text;
  final String name;
  final AnimationController animationController;

  ChatMessage({this.text, this.animationController, this.name});

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: CurvedAnimation(
        parent: animationController,
        curve: Curves.easeOut,
      ),
      child: Container(
        child: Row(
          children: [
            Container(
              child: CircleAvatar(
                child: Text(name[0]),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(name),
                  Container(
                    child: Text(text),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
