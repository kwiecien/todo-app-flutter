import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TodoTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            onPressed: () {
              if (textController.text.isNotEmpty) {
                Firestore.instance.collection("todos").add({
                  "description": textController.text,
                  "done": false,
                  "creationTime": DateTime.now()
                }).then((snapshot) {
                  textController.clear();
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
