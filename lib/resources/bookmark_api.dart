import 'dart:convert';
import 'package:bookmarkit/resources/constants.dart';
import 'package:http/http.dart' as http;
import 'package:bookmarkit/models/bookmark.dart';

class BookmarkAPI {

  var query = "&q=bitcoin&from=2020-07-21&sortBy=publishedAt";

  Future<List> fetchData() async {

    var response = await http.get(Constants.baseUrl + Constants.apiKey + query);

    if (response.statusCode == 200) {
      Map<String, dynamic> body = jsonDecode(response.body);
      List allBooksJson = body['articles'];
      List<Bookmark> booksList = [];
      allBooksJson.forEach((bookmark) {
        booksList.add(Bookmark.fromJson(bookmark));
      });
      return booksList;
    } else {
      throw Exception('Failed to load books');
    }
  }

}