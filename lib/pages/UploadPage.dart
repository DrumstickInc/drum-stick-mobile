import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/HeaderWidget.dart';

class UploadPage extends StatefulWidget {
  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context, strTitle: "Communities",),
    );
  }
}
