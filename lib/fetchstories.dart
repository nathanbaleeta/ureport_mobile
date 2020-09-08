
import'dart:async';
import'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


Future <Story> fetchStory()async{
  final response = await http.get('https://ureport.in/api/v1/stories/org/1/?format=json');

  if(response.statusCode==200){
    //go through JSON if get the 200response
    return Story.fromJson(json.decode(response.body));
  } else {
    //if no 200 response, then throw the exception
    throw Exception('Failed to load Story');
  }
}


class Story{
  final int id;
  final String title;
  final bool featured;
  final String summary;
  final int videoId;
  final String audioLink;
  List <String> tags=List<String>();
  final int org;
  List<String>images=List<String>();
  Map category = Map<String,String>();
  final String createdOn;

  Story({this.id,this.title,this.featured,this.summary,this.videoId,this.audioLink,
    this.tags,this.org,this.images,this.category,this.createdOn});

  factory Story.fromJson(Map <String,dynamic> json){
    return Story(
        id:json['id'],
        title:json['title'],
        featured:json['featured'],
        summary:json['summary'],
        videoId:json['video_id'],
        audioLink:json['audio_link'],
        tags:json['tags'],
        org:json['org'],
        images:json['images'],
        category:json['category'],
        createdOn:json['created_on']
    );
  }

}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State <MyApp>{
  Future<Story>futureStory;

  @override
  void initState() {
    super.initState();
    futureStory = fetchStory();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Story>(
            future: futureStory,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.title);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
