import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:mimecon/mimecon.dart';

void main() {
  testWidgets('Mimecon should return default icon', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
          body: Mimecon(
        mimetype: "image/png",
      )),
    ));

    final iconFinder = find.byIcon(MdiIcons.image);

    expect(iconFinder, findsOneWidget);
    expect((tester.firstWidget(find.byType(Icon)) as Icon).color,
        const Color(0xFF858593));
    expect((tester.firstWidget(find.byType(Icon)) as Icon).size, 40);
  });

  testWidgets('Mimecon should return custom icon', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
          body: Mimecon(
        mimetype: "image/png",
        color: Colors.red,
        size: 20,
      )),
    ));

    expect((tester.firstWidget(find.byType(Icon)) as Icon).color, Colors.red);
    expect((tester.firstWidget(find.byType(Icon)) as Icon).size, 20);
  });
  testWidgets('Mimecon should return outlined icon', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
          body: Mimecon(
        mimetype: "image/png",
        isOutlined: true,
      )),
    ));

    final iconFinder = find.byIcon(MdiIcons.imageOutline);

    expect(iconFinder, findsOneWidget);
  });
}
