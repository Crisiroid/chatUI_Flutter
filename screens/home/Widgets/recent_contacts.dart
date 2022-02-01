// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:chat_ui/models/users.dart';

class recentContacts extends StatelessWidget {
  final contactlist = User.generateUsers();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 23),
      padding: EdgeInsets.only(left: 25),
      height: 50,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            margin: EdgeInsets.only(right: 13),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
          ),
          Expanded(
              child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                child: ClipRRect(
                  child: Image.asset(contactlist[index].iconUrl),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            separatorBuilder: (_, index) => SizedBox(
              width: 15,
            ),
            itemCount: contactlist.length,
          ))
        ],
      ),
    );
  }
}
