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
  Map<String, String> mimetypeExample = {
    "Image jpg mimetype": "image/jpg",
    "Pdf mimetype": "application/pdf",
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemCount: mimetypeExample.length,
          itemBuilder: (context, index) {
            String key = mimetypeExample.keys.elementAt(index);
            return ListTile(
              leading: Mimecon(
                mimetype: mimetypeExample[key]!,
                color: Colors.red,
                size: 40,
              ),
              title: Text(key),
            );
          },
        ),
      ),
    );
  }
}
