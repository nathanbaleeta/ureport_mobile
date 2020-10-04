import 'package:flutter/material.dart';
import 'package:ureport_app/stories/StoryConverter.dart';
import 'package:ureport_app/stories/StoryDetail.dart';

class StoryListViewOld extends StatelessWidget {
  final converter = new StoryConverter();

  getStoriesData() async {
    var stories = await converter.getStories();
    return stories;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200, // Update this
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
            return Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Text("SORT BY: "), DropdownButton<String>()],
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
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
                        // TODO: remove this
                        padding: EdgeInsets.all(10),
                        color: Colors.grey.shade200,
                        child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
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
                                  Image(
                                    image: AssetImage('lib/stories/share.png'),
                                    width: 30,
                                  ),
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
                )),
              ],
            );
          }
        },
      ),
    );
  }
}
