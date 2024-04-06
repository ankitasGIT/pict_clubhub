import 'package:flutter/material.dart';

// class WelcomeAdminPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     _showDialog(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Welcome Admin'),
//       ),
//       body: Center(
//         child: Text('Welcome Admin'),
//       ),
//     );
//   }

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.blueGrey[800],
        alignment: Alignment.centerLeft,
        title: Text("Create Event"),
        content: Text("Do you want to create an event?",
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            )),
        actions: [
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'No',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              // Add functionality for "Yes" button
              Navigator.of(context).pop();
            },
            child: Text(
              'Yes',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ],
      );
    },
  );
}
// }
