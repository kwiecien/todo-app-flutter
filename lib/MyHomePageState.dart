import 'package:flutter/material.dart';
import 'package:flutter_todo_app/MyHomePage.dart';
import 'package:flutter_todo_app/TodoCard.dart';
import 'package:intl/intl.dart';

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          _buildHeader(context),
          _buildTextField(context),
          _buildTasksList(context),
//          _buildDrawer(context),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 50, bottom: 20, right: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.blue,
            Colors.indigo,
          ],
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _buildAssignmentIcon(),
          _buildHeaderText(),
        ],
      ),
    );
  }

  Padding _buildAssignmentIcon() {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Icon(
        Icons.assignment,
        color: Colors.white,
        size: 60,
      ),
    );
  }

  Column _buildHeaderText() {
    var now = new DateTime.now();
    var formatter = new DateFormat('EEEE, d MMMM yyyy');
    String date = formatter.format(now);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 5),
          child: Text(
            "Todo List",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          date,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ],
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

  Widget _buildTextField(BuildContext context) {
    var textController = new TextEditingController();
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.blueGrey,
            width: 0.1,
          ),
        ),
      ),
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              controller: textController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Add a new Todo!',
                contentPadding: EdgeInsets.all(16),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          FlatButton(
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.add,
                  color: Colors.indigo,
                ),
                Text(
                  "Add",
                  style: TextStyle(
                    color: Colors.indigo,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildTasksList(BuildContext context) {
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
