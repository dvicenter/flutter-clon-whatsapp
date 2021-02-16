import 'package:clon_whatsapp/ui/call/call_page.dart';
import 'package:clon_whatsapp/ui/chat/chat_page.dart';
import 'package:clon_whatsapp/ui/status/status_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlutterChat'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(
              text: 'CHATS',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALLS',
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Text('foto'),
          ChatPage(),
          StatusPage(),
          CallPage(),
        ],
      ),
    );
  }
}
