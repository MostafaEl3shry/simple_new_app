import 'package:flutter/material.dart';

import '../widgets/category_button.dart';

class NewsCategoryPage extends StatelessWidget {
  const NewsCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Categories'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryButton(
                  color: Colors.blueAccent,
                  category: 'sport',
                  icon: Icons.sports_basketball,
                ),
                CategoryButton(
                  color: Colors.greenAccent,
                  category: 'science',
                  icon: Icons.science,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryButton(
                  color: Colors.orangeAccent,
                  category: 'business',
                  icon: Icons.business_sharp,
                ),
                CategoryButton(
                  color: Colors.redAccent,
                  category: 'politics',
                  icon: Icons.gavel,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
