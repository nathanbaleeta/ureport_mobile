import 'package:flutter_test/flutter_test.dart';
import 'package:ureport_app/model/Story.dart';

void main() {
  test('validate story model test data', () async {
    verifyTestData();
  });
}

void verifyTestData() {
  Story story = new Story();
  story.id = 1;
  story.title = 'Testing';
  story.featured = true;
  story.summary = '';

  expect(story.id, equals(1));
  expect(story.title.toString(), equals('Testing'));
  expect(story.featured.toString(), equals('true'));
  expect(story.summary.toString(), equals(''));


}