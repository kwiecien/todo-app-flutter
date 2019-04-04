import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  final DocumentSnapshot snapshot;

  const TodoCard({Key key, this.snapshot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                snapshot.data['description'],
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.delete,
              color: Colors.blue,
            ),
            onPressed: () {
              snapshot.reference.updateData({"done": true});
            },
          ),
        ],
      ),
    );
  }
}
