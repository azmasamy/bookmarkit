class Book {
  String _image;
  String _title;
  String _description;

  Book({String image, String title, String description})
      : _image = image,
        _title = title,
        _description = description;

  String get image => _image;
  String get title => _title;
  String get description => _description;

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(image: json['urlToImage'], title: json['author'], description: json['description']);
  }
}
