import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:section14/message_data.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JSON ListView in Flutter"),
        actions: <Widget>[
          Padding(padding: const EdgeInsets.all(8.0),
          ),
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            final Message message = messageData[index];
            return ListTile(
              leading: CircleAvatar(
                radius: 28,
                backgroundImage: AssetImage(message.imgProfile),
              ),
              title: Text(
                message.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              subtitle: Text(
                message.messageText
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          }, itemCount: messageData.length
      ),
    );
  }
}