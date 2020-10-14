import 'package:flutter/material.dart';
import 'package:ureport_app/stories/StoryConverter.dart';
import 'package:ureport_app/stories/StoryDetail.dart';

class StoryListView extends StatefulWidget {
  @override
  _StoryListViewState createState() => _StoryListViewState();
}

class _StoryListViewState extends State<StoryListView> {
  final converter = new StoryConverter();
  String tag = "all";

  @override
  void initState() {
    getStoriesData();
    super.initState();
  }

  getStoriesData() async {
    var stories = await converter.getStories();
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
                color: Colors.grey.shade200,
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
              /* Container(
                padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/stories/appBar_background.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FittedBox(
                      fit: BoxFit.contain,
                      child: Image(
                        image:
                            AssetImage('lib/stories/ureport_default_logo.png'),
                      ),
                    ),
                    SizedBox(width: 130),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        children: [
                          Text(
                            "SORT BY: ",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                          SizedBox(width: 10),
                          filterDropdown()
                        ],
                      ),
                    ),
                  ],
                ), //Row for combining drop down menu and sort by text
              ), */
              Expanded(
                  child: ListView.builder(
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
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
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
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image(
                                image: NetworkImage(snapshot.data[id].picture),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
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
      value: tag,
      icon: Icon(Icons.keyboard_arrow_down),
      iconSize: 18,
      elevation: 16,
      style: TextStyle(color: Colors.blue, fontSize: 18),
      items: <DropdownMenuItem>[
        new DropdownMenuItem(
          child: new Text('all'),
          value: "all",
        ),
        new DropdownMenuItem(
          child: new Text('TAG 1'),
          value: "TAG 1",
        ),
        new DropdownMenuItem(
          child: new Text('TAG 2'),
          value: "TAG 2",
        ),
        new DropdownMenuItem(
          child: new Text('TAG 3'),
          value: "TAG 3",
        ),
        new DropdownMenuItem(
          child: new Text('TAG 4'),
          value: "TAG 4",
        ),
      ],
      onChanged: (value) => setState(() {
        tag = value;
      }),
    );
  }
}
