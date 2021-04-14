import 'package:cloud_app/page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'services/news_service.dart';

class Homeview extends StatefulWidget {
  @override
  _HomeviewState createState() => _HomeviewState();
}

var articles;
getdata() async {
  NewsApi newsApi = NewsApi();
  articles = await newsApi.fetchArticles();
  /*for (var article in articles) {
    print(article.title);
  }*/
}

class _HomeviewState extends State<Homeview> {
  @override
  Widget build(BuildContext context) {
    // getdata();
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.blue,
          onPressed: () async {
            NewsApi newsApi = NewsApi();
            articles = await newsApi.fetchArticles();
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Pagedate()));
            for (var article in articles) {
              print(article.title);
            }
          },
          child: Container(
            child: Text(
              'Get News',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
