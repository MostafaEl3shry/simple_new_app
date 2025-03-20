import 'package:flutter/material.dart';

import '../screens/news_details.dart'; // Import the NewsDetailPage

class NewsItem extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String content;
  final String publishedAt; // Added publishedAt
  final String author; // Added author

  const NewsItem({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.content,
    required this.publishedAt, // Receive publishedAt
    required this.author, // Receive author
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to NewsDetailPage with the content, publishedAt, and author
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewsDetailPage(
              img: image,
              title: title,
              description: description,
              content: content,
              publishedAt: publishedAt, // Pass publishedAt
              author: author, // Pass author
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          shadowColor: Colors.black,
          elevation: 35,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Image.network(image),
                const SizedBox(height: 10),
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(description),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
container
* Coulmn(
* image,
* title,
* description,
*
* )
*
* */
