library mimecon;

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:mimecon/mimetype.dart';
import 'dart:developer' as devlog;

class Mimecon extends StatefulWidget {
  final String mimetype;
  final Color color;
  final double size;
  final bool isOutlined;
  Mimecon({Key? key, required this.mimetype, this.color = const Color(0xFF858593), this.size = 40.0, this.isOutlined = false})
      : assert(mimetype.isNotEmpty),
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
    return _setIcon(widget.mimetype, widget.color, widget.size, widget.isOutlined);
  }

  void catchError(String mimetype) {
    RegExp mimetypePattern = RegExp(r'^[-\w.]+/[-\w.]+$');
    if (!mimetypePattern.hasMatch(mimetype)) {
      devlog.log("the entered mimetype does not correspond to a standard mimetype format");
    }
  }

  Icon _setIcon(String mimeType, color, size, isOutlined) {
    if (imageMimeType.contains(mimeType)) {
      return Icon(
        isOutlined ? MdiIcons.imageOutline : MdiIcons.image,
        color: color,
        size: size,
      );
    } else if (videoMimeType.contains(mimeType)) {
      return Icon(
        MdiIcons.filmstripBox,
        color: color,
        size: size,
      );
    } else if (audioMimeType.contains(mimeType)) {
      return Icon(
        isOutlined ? MdiIcons.musicBoxOutline : MdiIcons.musicBox,
        color: color,
        size: size,
      );
    } else if (docMimeType.contains(mimeType)) {
      return Icon(
        MdiIcons.microsoftWord,
        color: color,
        size: size,
      );
    } else if (excelMimeType.contains(mimeType)) {
      return Icon(
        MdiIcons.microsoftExcel,
        color: color,
        size: size,
      );
    } else if (powerpointMimeType.contains(mimeType)) {
      return Icon(
        MdiIcons.microsoftPowerpoint,
        color: color,
        size: size,
      );
    } else if (googleDriveMimeType.contains(mimeType)) {
      return Icon(
        MdiIcons.googleDrive,
        color: color,
        size: size,
      );
    } else if (pdfMimeType.contains(mimeType)) {
      return Icon(
        MdiIcons.filePdfBox,
        color: color,
        size: size,
      );
    } else if (libreOfficeWriterMimeType.contains(mimeType)) {
      return Icon(
        isOutlined ? MdiIcons.fileDocumentOutline : MdiIcons.fileDocument,
        color: color,
        size: size,
      );
    } else if (libreOfficeImpressMimeType.contains(mimeType)) {
      return Icon(
        MdiIcons.presentation,
        color: color,
        size: size,
      );
    } else if (libreOfficeCalcMimeType.contains(mimeType)) {
      return Icon(
        isOutlined ? MdiIcons.fileTableOutline : MdiIcons.fileTable,
        color: color,
        size: size,
      );
    } else if (compressedFileMimeType.contains(mimeType)) {
      return Icon(
        isOutlined ? MdiIcons.folderZipOutline : MdiIcons.folderZip,
        color: color,
        size: size,
      );
    } else if (ebookMimeType.contains(mimeType)) {
      return Icon(
        MdiIcons.bookshelf,
        color: color,
        size: size,
      );
    } else if (codeMimeType.contains(mimeType)) {
      return Icon(
        isOutlined ? MdiIcons.fileCodeOutline : MdiIcons.fileCode,
        color: color,
        size: size,
      );
    } else if (calendarMimeType.contains(mimeType)) {
      return Icon(
        isOutlined ? MdiIcons.calendarOutline : MdiIcons.calendar,
        color: color,
        size: size,
      );
    } else if (jsonMimeType.contains(mimeType)) {
      return Icon(
        MdiIcons.codeJson,
        color: color,
        size: size,
      );
    } else if (fontMimeType.contains(mimeType)) {
      return Icon(
        MdiIcons.formatLetterCase,
        color: color,
        size: size,
      );
    } else {
      return Icon(
        isOutlined ? MdiIcons.fileOutline : MdiIcons.file,
        color: color,
        size: size,
      );
    }
  }
}
