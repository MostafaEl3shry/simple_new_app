import 'package:flutter/material.dart';
import 'package:news_app_2/providers/news_provider.dart';
import 'package:news_app_2/screens/news_category.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => NewsProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        // title: 'Flutter Demo',
        home: NewsCategoryPage(),
      ),
    );
  }
}
