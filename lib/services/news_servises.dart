import 'package:dio/dio.dart';
import 'package:news_app/model/article_model.dart';

class NewsServises {
  final Dio dio;

  NewsServises(this.dio);

  Future<List<ArticleModel>> getGeneralNews() async {
    Response response = await dio.get(
      "https://newsdata.io/api/1/latest?apikey=pub_79152092a576295542aaffc99380ab581b2d8&country=eg&category=top",
    );
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData["results"];

    List<ArticleModel> articlesList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
        image: article["image_url"],
        title: article["title"],
        subtitle: article["description"],
      );
      articlesList.add(articleModel);
    }

    return articlesList;
  }
}
