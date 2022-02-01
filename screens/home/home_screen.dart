// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, annotate_overrides, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:chat_ui/constants/colors.dart';
import 'package:chat_ui/screens/home/Widgets/recent_contacts.dart';
import 'package:chat_ui/screens/home/Widgets/recent_message.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Chat With your \n Loved ones',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 29,
                ),
              ),
            ),
            recentContacts(),
            myMessages()
          ],
        ),
      ),
    );
  }
}
