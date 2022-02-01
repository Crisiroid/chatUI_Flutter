// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class User {
  num id;
  String userName;
  String iconUrl;
  Color bgColor;
  User(
      {required this.id,
      required this.userName,
      required this.iconUrl,
      required this.bgColor});

  static List<User> generateUsers() {
    return [
      User(
        id: 1,
        userName: 'greg',
        iconUrl: 'assets/images/greg.jpg',
        bgColor: Color(0xFFFD8EC8),
      ),
      User(
        id: 2,
        userName: 'james',
        iconUrl: 'assets/images/james.jpg',
        bgColor: Color(0xFFFD8EC8),
      ),
      User(
        id: 3,
        userName: 'john',
        iconUrl: 'assets/images/john.jpg',
        bgColor: Color(0xFFFD8EC8),
      ),
      User(
        id: 4,
        userName: 'olivia',
        iconUrl: 'assets/images/olivia.jpg',
        bgColor: Color(0xFFFD8EC8),
      ),
      User(
        id: 5,
        userName: 'sam',
        iconUrl: 'assets/images/sam.jpg',
        bgColor: Color(0xFFFD8EC8),
      ),
      User(
        id: 6,
        userName: 'sophia',
        iconUrl: 'assets/images/sophia.jpg',
        bgColor: Color(0xFFFD8EC8),
      ),
      User(
        id: 7,
        userName: 'steven',
        iconUrl: 'assets/images/steven.jpg',
        bgColor: Color(0xFFFD8EC8),
      ),
    ];
  }
}
