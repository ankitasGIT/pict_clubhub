import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

void main(){
  runApp(LinkWidget());
}

class LinkWidget extends StatefulWidget {
  const LinkWidget({Key? key}) : super(key: key);

  @override
  State<LinkWidget> createState() => _LinkWidgetState();
}

class _LinkWidgetState extends State<LinkWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Link Widget'),
        centerTitle: true,
      ),
      body: Center(
        child: Link(
          uri: Uri.parse("https://www.codingninjas.com/codestudio/events/codequest-trivia-pict?utm_source=Growth-CS&utm_medium=CS&utm_campaign=CK_Sanika"),
          builder: (context, followLink) => ElevatedButton(
              onPressed: followLink,
              child: const Text("CodeQuest Link")),
        ),
      ),
    );
  }
}

