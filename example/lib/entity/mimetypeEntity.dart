import 'package:flutter/material.dart';

class MimetypeEntity {
  String mimetype;
  Color? color;
  double? size;
  bool isOutlined;
  MimetypeEntity({
    required this.mimetype,
    this.color,
    this.size,
    this.isOutlined = false,
  });
}
