import 'package:flutter/material.dart';
import 'package:flutter_todo_app/Header.dart';
import 'package:flutter_todo_app/MyDrawer.dart';
import 'package:flutter_todo_app/MyHomePage.dart';
import 'package:flutter_todo_app/TasksList.dart';
import 'package:flutter_todo_app/TodoTextField.dart';

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todo App')),
      drawer: MyDrawer(),
      body: Column(
        children: <Widget>[
          Header(),
          TodoTextField(),
          TasksList(),
        ],
      ),
    );
  }
}
