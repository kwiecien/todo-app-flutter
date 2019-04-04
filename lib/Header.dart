import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 20, bottom: 20, right: 10),
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

}
