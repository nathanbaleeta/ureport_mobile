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
        ),


        body:



        Card(
          child:
            Container(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              color: Colors.grey.shade200,
              child: Image(
                  image: NetworkImage(story.picture)),
            ),

          ),
        );



  }
}