import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todo_app/TodoCard.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: StreamBuilder<QuerySnapshot>(
        stream: Firestore.instance
            .collection("todos")
            .where("done", isEqualTo: false)
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return LinearProgressIndicator();
          }
          return ListView(
            padding: EdgeInsets.all(16),
            children: snapshot.data.documents
                .map((snap) => TodoCard(snapshot: snap))
                .toList(),
          );
        },
      ),
    );
  }
}
