import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/news_provider.dart';
import '../widgets/news_item.dart';

class NewsPage extends StatelessWidget {
  String category;

  NewsPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "$category News",
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Consumer<NewsProvider>(builder: (context, value, child) {
        var newsModel = value.data;
        value.getNews(category:category);
        if (newsModel == null) {
          value.getNews(category: category);
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.separated(
            itemCount: newsModel.news.length,
            itemBuilder: (context, index) => NewsItem(
              image: newsModel.news[index]["urlToImage"] ?? "no image",
              title: newsModel.news[index]["title"] ?? "Null",
              description: newsModel.news[index]["description"] ?? "Null",
              content: newsModel.news[index]["content"] ?? "Null", // Pass content
              publishedAt: newsModel.news[index]["publishedAt"] ?? "Null", // Pass publishedAt
              author: newsModel.news[index]["author"] ?? "Null", // Pass author
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
          );
        }
      }),
    );
  }
}
