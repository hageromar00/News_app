import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/hori_category.dart';

class listHoriCategory extends StatelessWidget {
  listHoriCategory({super.key});
  List<categoryModel> category = [
    categoryModel(text: 'general', image: 'assets/science.avif'),
    categoryModel(text: 'health', image: 'assets/health.avif'),
    categoryModel(text: 'science', image: 'assets/science.avif'),
    categoryModel(text: 'sport', image: 'assets/health.avif'),
    categoryModel(text: 'technology', image: 'assets/technology.jpeg'),
    categoryModel(text: 'science', image: 'assets/technology.jpeg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
      height: 100,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          itemBuilder: (context, index) {
            return horizontalCategory(
              model: category[index],
            );
          }),
    );
  }
}
