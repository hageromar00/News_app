import 'package:dio/dio.dart';
import 'package:news_app/models/news_model.dart';

class NewsService {
  final dio = Dio();
  // final Dio dio;
  // NewsService(this.dio);
  Future<List<newsModel>> getNews({required String Category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=2dcc7dff90ab4c2691910cec1078cd41&category=$Category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articless = jsonData['articles'];
      List<newsModel> arti = [];
      for (dynamic article in articless) {
        newsModel model = newsModel(
          image: article['urlToImage'],
          title: article['title'],
          subtitle: article['description"'],
          //  sourse: Sourse(id: article['id'], name: article['name'])
        );
        arti.add(model);
      }
      // print(arti);
      return arti;
    } catch (e) {
      return [];
    }
  }

  // void getGeneral() async {
  //   var responses = await dio.get(
  //       ' https://newsapi.org/v2/everything?q=bitcoin&apiKey=2dcc7dff90ab4c2691910cec1078cd41');
  //   print(responses.data);
  // }
}
