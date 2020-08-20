import 'dart:convert';
import 'package:bookmarkit/models/constants.dart';
import 'package:http/http.dart' as http;
import 'bookmark.dart';

class BookmarkAPI {

  var query = "&q=bitcoin&from=2020-07-20&sortBy=publishedAt";

  Future<List> fetchData() async {
    var response = await http.get(Constants.baseUrl + Constants.apiKey + query);

    if (response.statusCode == 200) {
      Map<String, dynamic> body = jsonDecode(response.body);
      List allBooksJson = body['articles'];
      List<Bookmark> booksList = [];
      allBooksJson.forEach((book) {
        booksList.add(Bookmark.fromJson(book));
      });
      return booksList;
    } else {
      throw Exception('Failed to load books');
    }
  }

}