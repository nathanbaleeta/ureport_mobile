import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:ureport_app/stories/Story.dart';


Future<List<Story>> _getStories() async {

  var data = await http.get("https://ureport.in/api/v1/stories/org/1/?format=json");
  var jsonData = json.decode(data.body);

  List<Story> stories = [];

  for(var u in jsonData['results']){
    Story story = Story(u["id"], u["title"], u["category"]["image_url"]);
    stories.add(story);
  }

  return stories;

}