import 'package:flutter/material.dart';
import 'package:ureport_app/stories/Story.dart';

// Incomplete, to be updated based on Figma designs

class StoryDetail extends StatelessWidget {
  final Story story; //id, title, picture

  StoryDetail(this.story);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("U-Report Stories"),
        backgroundColor: Colors.white
      ),
      body: Card(
        margin: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    color: Colors.blue.shade300,
                    child: Text(
                      "CATEGORY",
                      style: TextStyle(
                          fontSize: 20, color: Colors.white),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Image(
                    image: AssetImage('lib/stories/share.png'),
                    width: 30,
                  ),
                ],
              ),

              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                color: Colors.grey[80],
                child: Text(
                  story.title,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              
              ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.network(story.picture)),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Text, text, text, text, text, text",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
