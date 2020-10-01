import 'package:flutter/material.dart';
import 'package:ureport_app/stories/StoryDetail.dart';
import 'package:ureport_app/stories/StoryConverter.dart';

class StoryListView extends StatelessWidget {

  final converter = new StoryConverter();

  getStoriesData() async {
    var stories = await converter.getStories();
    return stories;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: getStoriesData(),
        builder: (BuildContext context, AsyncSnapshot snapshot){
          print(snapshot.data);
          if(snapshot.data == null){
            return Container(
                child: Center(
                    child: SizedBox(
                      child: CircularProgressIndicator(),
                      width: 30,
                      height: 30,
                    )
                )
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int id) {

                return Card(
                  color: Colors.grey[80],
                  child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        snapshot.data[id].picture
                    ),
                  ),
                  title: Text(snapshot.data[id].title),
                  //sselected: true,
                  onTap: (){

                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => StoryDetail(snapshot.data[id]))
                    );
                  },
                )
                );
              },
            );
          }
        },
      ),
    );
  }
}