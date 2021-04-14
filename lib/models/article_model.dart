class Article {
  final String title;
  final String description;
  final String imageUrl;
  final String articlUrl;
  Article({this.title, this.description, this.imageUrl, this.articlUrl});

  factory Article.fromJson(Map<String, dynamic> jsonData) {
    return Article(
        title: jsonData['title'],
        description: jsonData['description'],
        imageUrl: jsonData['urlToImage'],
        articlUrl: jsonData['url']);
  }
}
