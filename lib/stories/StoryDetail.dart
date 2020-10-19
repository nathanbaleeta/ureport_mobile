import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:ureport_app/stories/Story.dart';

// Incomplete, to be updated based on Figma designs

class StoryDetail extends StatelessWidget {
  final Story story; //id, title, picture, summary

  StoryDetail(this.story);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("U-Report Stories"), backgroundColor: Colors.white),
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        color: Colors.grey.shade200,
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
          child: ListView(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    color: Colors.blue.shade300,
                    child: Text(
                      story.category,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  story.content == null
                      ? Container()
                      : Image(
                          image: AssetImage('lib/stories/share.png'),
                          width: 30,
                        ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                story.title,
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image(
                  image: NetworkImage(story.picture),
                ),
              ),
              SizedBox(height: 20),
              story.content == null
                  ? Container()
                  : HtmlWidget(
                      story.content,
                      textStyle: TextStyle(
                        fontSize: 16,
                      ),
                    )
            ],
          ),
        ),
      ),
    );

    /* return Scaffold(
      appBar: AppBar(
          title: Text("U-Report Stories"), backgroundColor: Colors.white),
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
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Image(
                    image: AssetImage('lib/stories/share.png'),
                    width: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.network(story.picture)),
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                color: Colors.grey[80],
                child: Text(
                  story.title,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  story.summary,
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    ); */
  }
}
