import 'package:flutter/material.dart';
import 'package:flutter_app/pages/components/stories/storywidget.dart';

class StoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 130.0,
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return StoryWidget();
          },
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ));
  }
}
