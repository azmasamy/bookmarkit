class Bookmark {
  String _image;
  String _title;
  String _description;

  Bookmark({String image, String title, String description})
      : _image = image,
        _title = title,
        _description = description;

  String get image => _image;
  String get title => _title;
  String get description => _description;

  factory Bookmark.fromJson(Map<String, dynamic> json) {
    return Bookmark(image: json['urlToImage'], title: json['author'], description: json['description']);
  }
}
