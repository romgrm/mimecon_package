import 'package:example/entity/mimetypeEntity.dart';
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
  Map<String, List> mimetypeExample = {
    "Image jpg mimetype": [
      "image/jpg",
      Colors.green,
    ].toList(),
    "Pdf mimetype": ["application/pdf", Colors.red].toList(),
  };
  Map<String, MimetypeEntity> testMimeType = {
    "Image jpg mimetype": MimetypeEntity(mimetype: "image/jpg", color: Colors.green, size: 40, isOutlined: false),
    "Pdf mimetype little": MimetypeEntity(mimetype: "application/pdf", color: Colors.blue, size: 25),
    "Pdf mimetype with only mimeType": MimetypeEntity(mimetype: "application/pdf"),
    "Html mimetype outlined ": MimetypeEntity(mimetype: "text/html", color: Colors.purple, isOutlined: true),
    // "Pdf mimetype": ["application/pdf", Colors.red].toList(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemCount: testMimeType.length,
          itemBuilder: (context, index) {
            String key = testMimeType.keys.elementAt(index);
            return ListTile(
              leading: Mimecon(
                mimetype: testMimeType[key]!.mimetype,
                color: testMimeType[key]!.color,
                size: testMimeType[key]!.size,
                isOutlined: testMimeType[key]!.isOutlined,
              ),
              title: Text(key),
            );
          },
        ),
      ),
    );
  }
}
