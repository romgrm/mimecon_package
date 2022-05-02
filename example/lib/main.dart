import 'package:flutter/material.dart';
import 'package:mimecon/mimecon.dart';

void main() {
  runApp(const MimeconExample());
}

class MimeconExample extends StatefulWidget {
  const MimeconExample({Key? key}) : super(key: key);

  @override
  State<MimeconExample> createState() => _MimeconExampleState();
}

class _MimeconExampleState extends State<MimeconExample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              leading: Mimecon(
                mimetype: "imagejpg",
                color: Colors.red,
                size: 40,
              ),
              title: Text("test"),
            )
          ],
        ),
      ),
    );
  }
}
