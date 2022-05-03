import 'package:flutter/material.dart';

class MimetypeEntity {
  String mimetype;
  Color color;
  double size;
  bool isOutlined;
  MimetypeEntity({
    required this.mimetype,
    this.color = const Color(0xFF858593),
    this.size = 40.0,
    this.isOutlined = false,
  });
}
