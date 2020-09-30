import 'package:flutter/material.dart';
import 'package:ureport_app/stories/Story.dart';

class StoryDetail extends StatelessWidget {
  final Story story; //id, title, picture

  StoryDetail(this.story);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Story"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              color: Colors.amber,
              child: Text(
                story.title,
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.network(story.picture),
            SizedBox(
              height: 20,
            ),
            Text(
              "Story text",
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
