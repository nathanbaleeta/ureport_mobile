import 'package:flutter_test/flutter_test.dart';

import '../../lib/stories/StoryConverter.dart';

void main() {
  // a suite of tests to evaluate whether the custom story model data conform
  // to the predetermined test data provided to the converter
  test('Validate story model test data', () async {
    final storyConverter = StoryConverter();
    final stories = await storyConverter.getStories();
    final idsToVerify = [946, 713, 685, 677, 668, 648, 635, 625, 580, 579];
    expect(stories.length, 10); // verify the length of story test data

    for (int i = 0; i < stories.length; i++) {
      expect(stories[i].id, idsToVerify[i]); // verify hardcoded story data ids
      // verify picture website source for each test story
      expect(stories[i].picture.substring(0, 47),
          "https://dl-ureport.s3.amazonaws.com/categories/");
    }

    // verify titles of story test data
    expect(stories[6].title, "Virtual Reality in the Classroom");
    expect(stories[9].title, "COMMON ERRORS JOB APPLICANTS MAKE");
  });
}
