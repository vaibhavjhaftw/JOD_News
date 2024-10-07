import 'package:flutter/material.dart';
import 'package:new_project/ui/pages/inner_category_page.dart';

class CategoryPage extends StatelessWidget {
  get name => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            CategoryCard(image: 'assets/images/politics.png', title: 'Politics'),
            CategoryCard(image: 'assets/images/crypto.png', title: 'Crypto'),
            CategoryCard(image: 'assets/images/technology.png', title: 'Technology'),
            CategoryCard(image: 'assets/images/music.png', title: 'Music'),
            CategoryCard(image: 'assets/images/gaming.png', title: 'Gaming'),
            CategoryCard(image: 'assets/images/sports.png', title: 'Sports'),
            CategoryCard(image: 'assets/images/travel.png', title: 'Travel'),
            CategoryCard(image: 'assets/images/healthcare.png', title: 'Healthcare'),
            CategoryCard(image: 'assets/images/anime.png', title: 'Anime'),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String image;
  final String title;

  CategoryCard({required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the inner category page when the card is tapped
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => InnerCategoryPage(categoryTitle: title),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5, // Add shadow for depth
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(
                  colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(10),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

