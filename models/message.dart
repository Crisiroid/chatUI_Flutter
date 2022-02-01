import 'package:chat_ui/models/users.dart';
import 'package:flutter/material.dart';

class Message {
  User user;
  String lastMessage;
  String lastTimeSeen;
  bool isContinue;
  Message({
    required this.user,
    required this.lastMessage,
    required this.lastTimeSeen,
    this.isContinue = false,
  });

  static List<Message> generateHomePageMessages() {
    return [
      Message(
        user: users[0],
        lastMessage:
            'Hello User How are you Today? i went to park to have some fresh air!',
        lastTimeSeen: '14:21',
      ),
      Message(
        user: users[1],
        lastMessage: 'Hello How Are you doing? ',
        lastTimeSeen: '15:21',
      ),
      Message(
        user: users[2],
        lastMessage: 'Hello How Are you doing? ',
        lastTimeSeen: '12:21',
      ),
      Message(
        user: users[3],
        lastMessage: 'Hello How are you Today? ',
        lastTimeSeen: '4:21',
      ),
      Message(
        user: users[4],
        lastMessage: 'Hello How Are you doing? ',
        lastTimeSeen: '7:21',
      ),
      Message(
        user: users[5],
        lastMessage: 'Hello How Are you doing? ',
        lastTimeSeen: '7:21',
      ),
      Message(
        user: users[6],
        lastMessage: 'Hello How Are you doing? ',
        lastTimeSeen: '7:21',
      ),
    ];
  }

  static List<Message> generatedMessages() {
    return [
      Message(
        user: users[0],
        lastMessage: 'hello, how are you?',
        lastTimeSeen: '18:33',
      ),
      Message(
        user: user0,
        lastMessage: 'hello, i\'m good, how are you?',
        lastTimeSeen: '18:34',
      ),
      Message(
        user: users[0],
        lastMessage: 'i\'m good too!, what are you doing? ',
        lastTimeSeen: '18:34',
      ),
      Message(
        user: user0,
        lastMessage: 'Just Creating a flutter Chat Ui, how about you?  ',
        lastTimeSeen: '18:34',
      ),
      Message(
        user: users[0],
        lastMessage: 'nothing, just Chilling ',
        lastTimeSeen: '18:35',
      ),
    ];
  }
}

var users = User.generateUsers();
var user0 = User(
    id: 20,
    userName: 'Amir',
    iconUrl: 'assets/image/sam.png',
    bgColor: Colors.white);
