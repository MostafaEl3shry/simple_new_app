import 'package:flutter/material.dart';

class NewsDetailPage extends StatelessWidget {
  final String img;
  final String title;
  final String description;
  final String content;
  final String publishedAt; // Added publishedAt
  final String author; // Added author

  const NewsDetailPage({
    super.key,
    required this.img,
    required this.title,
    required this.description,
    required this.content,
    required this.publishedAt, // Receive publishedAt
    required this.author, // Receive author
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details" , style: TextStyle(fontSize: 40,color: Color.fromARGB(255, 209, 203, 11)) ,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          shadowColor: Colors.black,
          elevation: 35,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(img),
                ),
                const SizedBox(height: 20),
                Text(
                  title,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Text(
                  description,
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 20),
                Text(content), // Show the content from JSON
                const SizedBox(height: 100),
                Text(
                  "Published At: $publishedAt", // Display publishedAt
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 10),
                Text(
                  "Author: $author", // Display author
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





