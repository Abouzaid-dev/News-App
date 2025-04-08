import 'package:dio/dio.dart';

class NewsServises {
  final Dio dio = Dio();

  getGeneralNews() async {
    Response response = await dio.get("https://newsdata.io/api/1/latest?apikey=pub_79152092a576295542aaffc99380ab581b2d8&country=eg&category=top");
  }
}
