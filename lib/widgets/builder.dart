import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/service/news_service.dart';
import 'package:news_app/widgets/list_verti_category.dart';

class builderlist extends StatefulWidget {
  builderlist({super.key, required this.cate});
  final String cate;

  @override
  State<builderlist> createState() => _builderlistState();
}

class _builderlistState extends State<builderlist> {
  List<newsModel> arti = [];
  bool isLoading = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getgeneralNews();
     isLoading = false;
  }

  Future<void> getgeneralNews() async {
    arti = await NewsService().getNews(Category: widget.cate);
    setState(() {});
   
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()))
        : arti.isEmpty
            ? const SliverToBoxAdapter(
                child: Text('oop'),
              )
            :  ListVertiNews(articles: arti)
              ;
  }
}

// class builderlist extends StatefulWidget {
//   const builderlist({super.key});

//   @override
//   State<builderlist> createState() => _builderlistState();
// }

// class _builderlistState extends State<builderlist> {
//   List<newsModel> art = [];
//   bool isLoading = true;
//   @override
//   void initState() {
//     super.initState();
//     generalNews();
//     isLoading = false;
//   }
  
//   Future<void> generalNews() async {
//     art = await NewsService().getNews(Category: '');
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? const SliverToBoxAdapter(
//             child: Center(child: CircularProgressIndicator()))
//         : art.isNotEmpty
//             ? ListVertiNews(articles: art)
//             : const SliverToBoxAdapter(child: Text('oops '));
//     // : ListVertiNews(articles: art);
//   }
// }
