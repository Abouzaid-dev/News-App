import 'package:flutter/material.dart';
import 'package:news_app/main.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/services/news_servises.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsTileListView extends StatefulWidget {
  const NewsTileListView({super.key});

  @override
  State<NewsTileListView> createState() => _NewsTileListViewState();
}

class _NewsTileListViewState extends State<NewsTileListView> {
  List<ArticleModel> articles = [];
  @override
  void initState()  {
    super.initState();
     getGn();
  }

  Future<void> getGn() async {
    articles= await NewsServises(dio).getGeneralNews();
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length, (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 22,),
          child: NewsTile(articleModel: articles[index],),
        );
      }),
    );
  }
}
