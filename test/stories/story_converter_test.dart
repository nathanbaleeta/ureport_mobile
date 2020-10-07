import 'package:flutter_test/flutter_test.dart';
import 'package:ureport_app/stories/Story.dart';
import '../../lib/stories/StoryConverter.dart';

void main() {
  test("should return a list of stories", () async {
    final storyConverter = StoryConverter();
    final result = await storyConverter.getStories();
    expect(result, isA<List<Story>>());
  });
  
}

