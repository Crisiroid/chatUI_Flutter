// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors, camel_case_types, unused_element

import 'package:chat_ui/constants/colors.dart';
import 'package:chat_ui/models/message.dart';
import 'package:flutter/material.dart';

class newMessage extends StatelessWidget {
  final myId = 20;
  final list = Message.generatedMessages();

  _buildReceivedText(Message message) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          message.lastTimeSeen,
          style: TextStyle(
            color: kGreyLight,
            fontSize: 12,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: kPrimaryLight,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              )),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 180),
            child: Text(
              message.lastMessage,
              style: TextStyle(height: 1.4, color: kPrimaryDark),
            ),
          ),
        )
      ],
    );
  }

  _buildSenderText(Message message) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              child: CircleAvatar(
                child: ClipRRect(
                  child: Image.asset(message.user.iconUrl),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            SizedBox(width: 10),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: kGreyLight.withOpacity(0.3),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 180),
                child: Text(
                  message.lastMessage,
                  style: TextStyle(height: 1.4, color: kPrimaryDark),
                ),
              ),
            )
          ],
        ),
        Text(
          message.lastTimeSeen,
          style: TextStyle(
            color: kGreyLight,
            fontSize: 12,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 25),
            padding: EdgeInsets.fromLTRB(26, 49, 26, 70),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(27),
                topRight: Radius.circular(27),
              ),
            ),
            child: ListView.separated(
              padding: EdgeInsets.all(0),
              itemBuilder: (context, index) => list[index].user.id == myId
                  ? _buildReceivedText(list[index])
                  : _buildSenderText(list[index]),
              separatorBuilder: (_, index) => SizedBox(height: 20),
              itemCount: list.length,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 18),
              height: 50,
              width: 300,
              child: Stack(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        fillColor: kGreyLight.withOpacity(0.3),
                        filled: true,
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Type your Message ... ',
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: kPrimaryDark.withOpacity(0.3))),
                  ),
                  Positioned(
                    right: 8,
                    bottom: 8,
                    child: Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: kPrimary,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
