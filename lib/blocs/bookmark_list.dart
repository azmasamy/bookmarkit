import '../models/bookmark.dart';
import 'package:flutter/material.dart';
import 'package:bookmarkit/models/bookmark.dart';
import 'package:bookmarkit/resources/bookmark_api.dart';


enum apiStateEnum { notCalled, called }


class BookmarkList extends ChangeNotifier {
  List<Bookmark> _list = [];
  apiStateEnum _apiState = apiStateEnum.notCalled;

  apiStateEnum get apiState => _apiState;

  set apiState(apiStateEnum apiState) {
    _apiState = apiState;
  }

  List<Bookmark> get list => _list;

  set list(List<Bookmark> list) {
    _list.addAll(list);
    apiState = apiStateEnum.called;
    notifyListeners();
  }

  void updateList() {
    BookmarkAPI().fetchData().then((value) {
      list = value;
    });
  }
}
