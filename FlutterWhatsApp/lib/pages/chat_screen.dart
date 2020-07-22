import 'package:flutter/material.dart';
import '../models/chat_models.dart';

class ChatScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    //var list = ChatModel();
    return ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, i) => Column(children: [
              Divider(
                height: 10.0,
              ),
              ListTile(
                leading: CircleAvatar(
                    foregroundColor: Theme.of(context).primaryColor,
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(dummyData[i].avatarUrl)),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(dummyData[i].name,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                subtitle: Container(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    dummyData[i].message,
                    style: TextStyle(color: Colors.green,fontSize: 15.0),
                  ),
                ),
              )
            ]));
  }
}