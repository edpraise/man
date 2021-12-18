import 'package:flutter/material.dart';

class User {
  String user;
  String password;
  String course;

  User({@required this.user, @required this.password, @required this.course});

  static User fromDB(String dbuser) {
    return new User(
        user: dbuser.split(':')[0],
        password: dbuser.split(':')[1],
        course: dbuser.split(':')[1]);
  }
  
}
