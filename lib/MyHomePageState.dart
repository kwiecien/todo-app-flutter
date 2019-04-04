import 'package:flutter/material.dart';
import 'package:flutter_todo_app/Header.dart';
import 'package:flutter_todo_app/MyHomePage.dart';
import 'package:flutter_todo_app/TasksList.dart';
import 'package:flutter_todo_app/TodoTextField.dart';

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Header(),
          TodoTextField(),
          TasksList(),
//          _buildDrawer(context),
        ],
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
