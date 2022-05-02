library mimecon;

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:mimecon/mimetype.dart';
import 'dart:developer' as devlog;

class Mimecon extends StatefulWidget {
  final String mimetype;
  final Color? color;
  final double? size;
  Mimecon({
    Key? key,
    required this.mimetype,
    this.color,
    this.size,
  })  : assert(mimetype.isNotEmpty),
        super(key: key);

  @override
  State<Mimecon> createState() => _MimeconState();
}

class _MimeconState extends State<Mimecon> {
  @override
  void initState() {
    super.initState();
    catchError(widget.mimetype);
  }

  @override
  Widget build(BuildContext context) {
    return _setIcon(widget.mimetype, widget.color, widget.size);
  }

  void catchError(String mimetype) {
    RegExp mimetypePattern = RegExp(r'^[-\w.]+/[-\w.]+$');
    if (!mimetypePattern.hasMatch(mimetype)) {
      devlog.log("the entered mimetype does not correspond to a standard mimetype format");
    }
  }

  Icon _setIcon(String mimeType, Color? color, double? size) {
    var iconColor = color ?? const Color(0xFF858593);
    var iconSize = size ?? 20.0;
    if (imageMimeType.contains(mimeType)) {
      return Icon(
        MdiIcons.image,
        color: iconColor,
        size: iconSize,
      );
    } else if (videoMimeType.contains(mimeType)) {
      return Icon(
        MdiIcons.filmstripBox,
        color: iconColor,
        size: iconSize,
      );
    } else if (audioMimeType.contains(mimeType)) {
      return Icon(
        MdiIcons.musicBox,
        color: iconColor,
        size: iconSize,
      );
    } else if (docMimeType.contains(mimeType)) {
      return Icon(
        MdiIcons.microsoftWord,
        color: iconColor,
        size: iconSize,
      );
    } else if (excelMimeType.contains(mimeType)) {
      return Icon(
        MdiIcons.microsoftExcel,
        color: iconColor,
        size: iconSize,
      );
    } else if (powerpointMimeType.contains(mimeType)) {
      return Icon(
        MdiIcons.microsoftPowerpoint,
        color: iconColor,
        size: iconSize,
      );
    } else if (googleDriveMimeType.contains(mimeType)) {
      return Icon(
        MdiIcons.googleDrive,
        color: iconColor,
        size: iconSize,
      );
    } else if (pdfMimeType.contains(mimeType)) {
      return Icon(
        MdiIcons.filePdfBox,
        color: iconColor,
        size: iconSize,
      );
    } else if (libreOfficeWriterMimeType.contains(mimeType)) {
      return Icon(
        MdiIcons.fileDocument,
        color: iconColor,
        size: iconSize,
      );
    } else if (libreOfficeImpressMimeType.contains(mimeType)) {
      return Icon(
        MdiIcons.presentation,
        color: iconColor,
        size: iconSize,
      );
    } else if (libreOfficeCalcMimeType.contains(mimeType)) {
      return Icon(
        MdiIcons.fileTable,
        color: iconColor,
        size: iconSize,
      );
    } else {
      return Icon(
        MdiIcons.fileQuestion,
        color: iconColor,
        size: iconSize,
      );
    }
  }
}
