import 'dart:async';

import '../models/bookmark.dart';
import 'package:flutter/material.dart';
import 'package:bookmarkit/models/bookmark.dart';
import 'package:bookmarkit/resources/bookmark_api.dart';




class BookmarkList {
  final _controller = StreamController<List<Bookmark>>();

  Stream<List<Bookmark>> get stream => _controller.stream;

  set controller(List<Bookmark> list) {
    _controller.sink.add(list);
  }

  void updateList() {
    BookmarkAPI().fetchData().then((value) {
      controller = value;
    });
  }
}
