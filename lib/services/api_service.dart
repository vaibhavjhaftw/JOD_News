import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:new_project/models/article.dart';

class ApiService {
  final String _apiKey = 'a67623a721624ab3aff03eec246074ee';
  final String _baseUrl = 'https://newsapi.org/v2';

  Future<List<Article>> fetchTopHeadlines() async {
    final response = await http.get(Uri.parse('$_baseUrl/top-headlines?country=in&apiKey=$_apiKey'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body)['articles'];
      return jsonResponse.map((data) => Article.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load headlines');
    }
  }
}
