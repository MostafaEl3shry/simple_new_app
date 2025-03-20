import 'package:dio/dio.dart';

import '../model/news_model.dart';

class NewsService {
  static Dio dio = Dio();

  static Future<NewsModel> fetchData({required String category}) async {
    Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=55a9c50b17404b9d8e53be0e63de2e4a");
    if (response.statusCode == 200) {
      return NewsModel.fromJson(response.data);
    } else {
      throw Exception("Failed to load data");
    }
  }
}
