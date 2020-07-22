import 'package:FlutterWhatsApp/pages/call_screen.dart';
import 'package:FlutterWhatsApp/pages/camera_screen.dart';
import 'package:FlutterWhatsApp/pages/chat_screen.dart';
import 'package:FlutterWhatsApp/pages/status_screen.dart';
import 'package:flutter/material.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin {
  
    TabController _tabController;

    @override
  void initState() {
    
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "CHATS"),
            Tab(text: "STATUS"),
            Tab(text: "CALLS",)
          ],
        ),
        actions: [
          Icon(Icons.search),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0)
          ),
          Icon(Icons.more_vert)],
      ),

      body: TabBarView(
        controller: _tabController,
        children: [
          CameraScreen(),
          ChatScreen(),
          CallScreen(),
          StatusScreen()
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.message,color: Colors.white),
        onPressed: ()=>print("Open chats"),
      ),
    );
  }
}
