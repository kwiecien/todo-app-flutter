import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: <Widget>[
                Text(
                  'Flutter Drawer',
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic
                  ),
                ),
                FlutterLogo(
                  size: 80,
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.tealAccent,
            ),
          ),
          ListTile(
            title: Text('Show Snackbar'),
            onTap: () {
              _showSnackBar(context);
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Take a picture'),
            onTap: () {

              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  void _showSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: Text('Yay! A SnackBar!'),
      action: SnackBarAction(
        label: 'Hide',
        onPressed: () {
          // Some code to undo the change!
        },
      ),
    );
    // Find the Scaffold in the Widget tree and use it to show a SnackBar!
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
