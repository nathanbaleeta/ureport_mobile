import 'package:flutter/material.dart';
import 'package:ureport_app/stories/StoryConverter.dart';
import 'package:ureport_app/stories/StoryDetail.dart';

class StoryListView extends StatelessWidget {
  final converter = new StoryConverter();

  getStoriesData() async {
    var stories = await converter.getStories();
    return stories;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: FutureBuilder(
        future: getStoriesData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          print(snapshot.data);
          if (snapshot.data == null) {
            return Container(
                child: Center(
                    child: SizedBox(
              child: CircularProgressIndicator(),
              width: 30,
              height: 30,
            )));
          } else {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int id) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) =>
                                StoryDetail(snapshot.data[id])));
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.grey.shade200,
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      child: Column(
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
                              Icon(Icons.forward), // TODO: Get the right icon
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            snapshot.data[id].title,
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10),
                          Image(
                            image: NetworkImage(snapshot.data[id].picture),
                          )
                        ],
                      ),
                    ),
                  ),
                );
                /* return Card(
                    color: Colors.grey[80],
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(snapshot.data[id].picture),
                      ),
                      title: Text(snapshot.data[id].title),
                      //sselected: true,
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) =>
                                    StoryDetail(snapshot.data[id])));
                      },
                    ));*/
              },
            );
          }
        },
      ),
    );
  }
}
