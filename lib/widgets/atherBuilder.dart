import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/service/news_service.dart';
import 'package:news_app/widgets/list_verti_category.dart';

class atherbuilderlist extends StatefulWidget {
  const atherbuilderlist({super.key, required this.category});
  final String category;

  @override
  State<atherbuilderlist> createState() => _atherbuilderlistState();
}

class _atherbuilderlistState extends State<atherbuilderlist> {
  @override
  var Future;
  void initState() {
    super.initState();
    Future = NewsService().getNews(Category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<newsModel>>(
        future: Future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListVertiNews(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text('oops error'),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()),
            );
          }
        });
  }
}

// class atherbuilderlist extends StatefulWidget {
//   atherbuilderlist({super.key,required this.categor});
//   final String categor;
//   @override
//   State<atherbuilderlist> createState() => _atherbuilderlistState();
// }

// class _atherbuilderlistState extends State<atherbuilderlist> {
//   var Future;
//   void initState() {
//     super.initState();
//     Future = NewsService().getNews(Category: widget.categor);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<List<newsModel>>(
//       future: Future,
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           return ListVertiNews(articles: snapshot.data!);
//         } else if (snapshot.hasError) {
//           return const SliverToBoxAdapter(child: Text('oops '));
//         } else {
//           return const SliverToBoxAdapter(
//               child: Center(child: CircularProgressIndicator()));
//         }
//       },
//     );
//   }
// }
