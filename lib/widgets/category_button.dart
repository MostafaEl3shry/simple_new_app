import 'package:flutter/material.dart';
import 'package:news_app_2/providers/news_provider.dart';
import 'package:provider/provider.dart';

import '../screens/news_page.dart';

class CategoryButton extends StatelessWidget {
  Color color;
  IconData icon;
  String category;

  CategoryButton({
    super.key,
    required this.color,
    required this.icon,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Provider.of<NewsProvider>(context,listen: false).data = null;
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => NewsPage(
                      category: category,
                    )
            )
        );
      },
      child: Container(
        width: 120,
        height: 130,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26, // Shadow color
              offset: Offset(0, 4), // Horizontal and vertical offset
              blurRadius: 6.0, // Blur effect
            ),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                icon,
                size: 60,
                color: Colors.white,
              ),
            ),
            Text(
              category,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget _buildCategoryButton() {
  //   return GestureDetector(
  //     onTap: onTap,
  //     child: Container(
  //       width: 130,
  //       height: 120,
  //       decoration: BoxDecoration(
  //         color: color,
  //         borderRadius: BorderRadius.circular(8.0),
  //       ),
  //       child: Center(
  //         child: Column(
  //           children: [
  //             Padding(
  //               padding: const EdgeInsets.all(8.0),
  //               child: Icon(
  //                 icon,
  //                 size: 60,
  //                 color: Colors.white,
  //               ),
  //             ),
  //             Text(
  //               title,
  //               style: const TextStyle(
  //                 color: Colors.white,
  //                 fontSize: 16.0,
  //                 fontWeight: FontWeight.w600,
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
