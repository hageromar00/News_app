import 'package:flutter/material.dart';
import 'package:news_app/widgets/atherBuilder.dart';

class pushCategory extends StatelessWidget {
   pushCategory({super.key,required this.cate});
 final String cate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [atherbuilderlist(category: cate)]),
    );
  }
}
//cached network image