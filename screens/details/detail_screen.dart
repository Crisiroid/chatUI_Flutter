// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types, prefer_const_constructors_in_immutables, unnecessary_string_interpolations

import 'package:chat_ui/constants/colors.dart';
import 'package:chat_ui/models/message.dart';
import 'package:chat_ui/screens/details/Widget/contact_info.dart';
import 'package:chat_ui/screens/details/Widget/new_message.dart';
import 'package:chat_ui/screens/details/Widget/recent_detail_bar.dart';
import 'package:flutter/material.dart';

class detailPage extends StatelessWidget {
  final Message message;
  detailPage(this.message);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: Column(
        children: [
          detailAppB(),
          ContactInfo(message),
          Expanded(
            child: newMessage(),
          ),
        ],
      ),
    );
  }
}
