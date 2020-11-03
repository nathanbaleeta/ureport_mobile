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
    // print(jsonData);

    List<Story> stories = [];

    for (var u in jsonData['results']) {
      String titleOrig = await u["title"];
      List<int> titleInts = titleOrig.runes.toList();
      String titleDecoded = utf8.decode(titleInts);
      String contentOrig = await u["content"];
      List<int> contentInts = contentOrig.runes.toList();
      String contentDecoded = utf8.decode(contentInts);

      Story story = Story(u["id"], titleDecoded, u["category"]["image_url"],
          u["summary"], u["tags"], u["category"]["name"], contentDecoded);
      stories.add(story);
    }

    print(stories.length);

    return stories;
  }
}
