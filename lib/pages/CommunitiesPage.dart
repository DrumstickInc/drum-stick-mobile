import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/HeaderWidget.dart';

class CommunitiesPage extends StatefulWidget {
  @override
  _CommunitiesPageState createState() => _CommunitiesPageState();
}

class _CommunitiesPageState extends State<CommunitiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  header(context, strTitle: "Communities",),
    );
  }
}

class CommunitiesItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Activity Feed Item goes here');
  }
}