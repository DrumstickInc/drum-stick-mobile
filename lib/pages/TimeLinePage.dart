import 'package:flutter/material.dart';
import 'package:flutter_app/pages/components/posts/postwidget.dart';
import 'package:flutter_app/pages/components/stories/storieswidget.dart';
import 'package:flutter_app/widgets/HeaderWidget.dart';
import 'package:flutter_app/widgets/ProgressWidget.dart';

class TimeLinePage extends StatefulWidget {
  @override
  _TimeLinePageState createState() => _TimeLinePageState();
}

class _TimeLinePageState extends State<TimeLinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.camera_alt),
        title: Text(
          'InstaClone',
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(Icons.live_tv),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(Icons.near_me),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          StoriesWidget(),
          PostWidget(),
        ],
      ),
    );
  }
}
