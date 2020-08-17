import 'dart:convert';
import 'package:http/http.dart' as http;
import 'book.dart';

class APIController {

  Future<http.Response> fetchAlbum() {
    return http.get('https://jsonplaceholder.typicode.com/albums/1');
  }

  Future<List> fetchData() async {
    var key = "b848ea66290b44faa3a331705b2d8703";
    var url = 'http://newsapi.org/v2/everything?q=bitcoin&from=2020-07-17&sortBy=publishedAt&apiKey=b848ea66290b44faa3a331705b2d8703';
    var response = await http.get(url);

//    print('Response status: ${response.statusCode}');
//    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      Map<String, dynamic> body = jsonDecode(response.body);
      List allBooksJson = body['articles'];
      List booksList = [];
      allBooksJson.forEach((book) {
        booksList.add(Book.fromJson(book));
      });
      return booksList;
    } else {
      throw Exception('Failed to load books');
    }
  }

}