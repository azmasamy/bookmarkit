import 'package:flutter/material.dart';
import 'book.dart';

class BookList extends ChangeNotifier {
  List<Book> _list;

  List<Book> get list => _list;

  set list(List<Book> list) {
    _list = list;
    notifyListeners();
  }

}