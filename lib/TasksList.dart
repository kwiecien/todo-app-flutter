import 'package:flutter/material.dart';
import 'package:flutter_todo_app/TodoCard.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          TodoCard(text: "Prepare presentation for Sonthofen"),
          TodoCard(text: "Do laundry"),
          TodoCard(text: "Go running"),
          TodoCard(text: "Go grocery shopping"),
          TodoCard(text: "Create a simple todo list app for Sonthofen Workshop 2019"),
          TodoCard(text: "Go Snowboarding"),
          TodoCard(text: "Take a nap"),
        ],
      ),
    );
  }

}
