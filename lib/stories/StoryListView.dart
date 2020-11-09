import 'package:flutter/material.dart';
import 'package:ureport_app/stories/Story.dart';
import 'package:ureport_app/stories/StoryConverter.dart';
import 'package:ureport_app/stories/StoryDetail.dart';

class StoryListView extends StatefulWidget {
  @override
  _StoryListViewState createState() => _StoryListViewState();
}

class _StoryListViewState extends State<StoryListView> {
  final converter = new StoryConverter();
  String category = "";
  Set<String> categories = Set<String>();

  @override
  void initState() {
    getStoriesData();
    super.initState();
  }

  getStoriesData() async {
    var stories = await converter.getStories();
    categories.add("");
    for (Story story in stories) {
      categories.add(story.category);
    }
    return stories;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
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
                color: Colors.grey.shade100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "SORT BY: ",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    SizedBox(width: 10),
                    filterDropdown(),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int id) {
                  return (snapshot.data[id].category == category ||
                          category == "")
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) =>
                                        StoryDetail(snapshot.data[id])));
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            color: Colors.grey.shade100,
                            child: Container(
                              color: Colors.white,
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 5, 10, 5),
                                        color: Colors.blue.shade300,
                                        child: Text(snapshot.data[id].category,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white)),
                                      ),
                                      Expanded(child: SizedBox()),
                                      Image(
                                        image:
                                            AssetImage('lib/media/share.png'),
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
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Image(
                                      image: NetworkImage(
                                          snapshot.data[id].picture),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      : Container();
                },
              )),
            ],
          );
        }
      },
    );
  }

  filterDropdown() {
    return DropdownButton(
      hint: new Text('Select type'),
      value: category,
      icon: Icon(Icons.keyboard_arrow_down),
      iconSize: 18,
      elevation: 10,
      style: TextStyle(color: Colors.blue, fontSize: 16),
      items: categories.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (value) => setState(() {
        category = value;
      }),
    );
  }
}
