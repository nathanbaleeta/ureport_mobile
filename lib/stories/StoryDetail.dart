import 'package:flutter/material.dart';
import 'package:ureport_app/stories/Story.dart';

class StoryDetail extends StatelessWidget {

  final Story story;

  StoryDetail(this.story);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(story.title),
        )
    );
  }
}