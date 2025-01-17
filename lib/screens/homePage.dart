import 'package:flutter/material.dart';
import 'package:news_app/widgets/atherBuilder.dart';
import 'package:news_app/widgets/builder.dart';
import 'package:news_app/widgets/hori_category.dart';
import 'package:news_app/widgets/list_hori_category.dart';
import 'package:news_app/widgets/list_verti_category.dart';
import 'package:news_app/widgets/verti_category.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              ' Clouds',
              style: TextStyle(color: Colors.amber),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: listHoriCategory(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          atherbuilderlist(category: 'general'),
          // builderlist(
          //   cate: 'general',
          // ),
          // ListVertiNews(),
          //  const  SliverToBoxAdapter(
          //     child: ListVertiNews(),
          //   ),
        ],
      ),
      // body: Column(
      //   children: [
      //     listHoriCategory(),
      //     SizedBox(
      //       height: 10,
      //     ),
      //     Expanded(child: vertiCategoryNews())
      //   ],
      // ),
    );
  }
}
