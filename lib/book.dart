import 'package:flutter/material.dart';

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
}