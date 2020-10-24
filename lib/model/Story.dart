class Story {
  int id;
  String title;
  bool featured;
  String summary;

  // Constructor
  Story({this.id, this.title, this.featured, this.summary});

  factory Story.fromJson(Map<String, dynamic> json) {
    return Story(
      id: json['id'],
      title: json['title'],
      featured: json['featured'],
      summary: json['summary'],

    );
  }
}

