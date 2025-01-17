import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/widgets/verti_category.dart';

class ListVertiNews extends StatelessWidget {
  ListVertiNews({super.key, required this.articles});
  List<newsModel> articles = [];
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, int index) {
        return vertiCategoryNews(
            model: articles[index]); // Your vertical category list widget
      },
    ));
    // return ListView.builder(
    //     physics: NeverScrollableScrollPhysics(),
    //     shrinkWrap: true,
    //     itemCount: 10,
    //     itemBuilder: (context, index) {
    //       return vertiCategoryNews();
    //     });
  }
}
