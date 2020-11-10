import 'package:flutter/material.dart';
import 'package:flutter_app/assets/drumstickmobile_icons.dart';
import 'package:flutter_app/pages/components/posts/postwidget.dart';
import 'package:flutter_app/pages/components/posts/postwidget2.dart';
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
        leading: Icon(Drumstickmobile.drum),
        title: Text(
          'DrumStick',
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(Icons.add_comment),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(Icons.search),
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
