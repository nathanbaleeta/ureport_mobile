import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ureport_app/stories/Story.dart';

class StoryConverter {
  static final String organizationURL =
      "https://ureport.in/api/v1/stories/org/1/?format=json";

  Future<List<Story>> getStories() async {
    var data = await http.get(organizationURL);
    var jsonData = json.decode(data.body);
    print(jsonData);

    List<Story> stories = [];

    for (var u in jsonData['results']) {
      Story story = Story(u["id"], u["title"], u["category"]["image_url"],
          u["summary"], u["tags"], u["category"]["name"], u["content"]);
      stories.add(story);
    }

    print(stories.length);

    return stories;
  }
}
