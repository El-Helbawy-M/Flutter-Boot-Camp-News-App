import 'dart:convert';

import 'package:cloud_app/models/article_model.dart';
import 'package:cloud_app/models/list_articles_model.dart';
import 'package:http/http.dart' as http;

class NewsApi {
  final String apiKey = '2c1bc532b7ca45f9a9197b95f14c6af7';

  Future<List<Article>> fetchArticles() async {
    try {
      http.Response response = await http.get(
          'https://newsapi.org/v2/top-headlines?country=eg&apiKey=$apiKey');
      if (response.statusCode == 200) {
        String data = response.body; //still string
        var jsonData = jsonDecode(data);
        //converted to json but data still unknown
        Articles articless = Articles.fromJson(jsonData);
        //articlesss known as list but list of dynamic
        List<Article> articlesList =
            articless.articles.map((e) => Article.fromJson(e)).toList();
        //each article in artcles stored in articlesList
        return articlesList;
      } else {
        print('status code= ${response.statusCode}');
      }
    } catch (ex) {
      print(ex);
    }
  }
}
