// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, camel_case_types, avoid_unnecessary_containers, unnecessary_string_interpolations

import 'package:chat_ui/constants/colors.dart';
import 'package:chat_ui/screens/details/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:chat_ui/models/message.dart';

class myMessages extends StatelessWidget {
  final messageList = Message.generateHomePageMessages();

  Widget _buildMessage(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => detailPage(messageList[index]),
          ),
        );
      },
      child: Row(
        children: [
          Container(
            child: CircleAvatar(
              child: ClipRRect(
                child: Image.asset(messageList[index].user.iconUrl),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${messageList[index].user.userName}',
                      style: TextStyle(
                          fontSize: 15,
                          color: kPrimaryDark,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(messageList[index].lastTimeSeen)
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  messageList[index].lastMessage,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMessages() {
    return ListView.separated(
        itemBuilder: (context, index) => _buildMessage(context, index),
        separatorBuilder: (_, index) => SizedBox(height: 25),
        itemCount: messageList.length);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: _buildMessages(),
      ),
    );
  }
}
