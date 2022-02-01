// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, avoid_unnecessary_containers

import 'package:chat_ui/models/message.dart';
import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  final Message message;
  ContactInfo(this.message);

  Widget _callButton(IconData iconData) {
    return Container(
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.6),
      ),
      child: Icon(
        iconData,
        color: Colors.white,
        size: 25,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            message.user.userName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              _callButton(Icons.phone),
              SizedBox(
                width: 10,
              ),
              _callButton(Icons.video_camera_back),
            ],
          )
        ],
      ),
    );
  }
}
