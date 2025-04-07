import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/views/home_view.dart';

void main(){
  getNews();
  runApp(NewsApp());
}

final dio = Dio();

void getNews() async {
  final response = await dio.get('https://newsapi.org/v2/everything?q=bitcoin&apiKey=6857bffbde1c41e79a2cd8621e854a3a');
  print(response);
  
}
// The main widget of the application.

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}