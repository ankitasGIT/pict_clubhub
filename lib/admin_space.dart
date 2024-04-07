import 'package:flutter/material.dart';

class WelcomeAdminPage extends StatelessWidget {
  const WelcomeAdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => _showDialog(context));

    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        shadowColor: Colors.grey[600],
        elevation: 1,
        title: const Text("Admin's Space"),
      ),
      body: const Center(
        child: Text(
          'I don\'t know what to show here :/\nSorry Ishu :)',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.blueGrey[800],
        alignment: Alignment.centerLeft,
        title: const Text("Create Event",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            )),
        content: const Text("Do you want to create an event?",
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            )),
        actions: [
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(
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
            child: const Text(
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