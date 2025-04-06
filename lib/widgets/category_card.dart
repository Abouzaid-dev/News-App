
import 'package:flutter/material.dart';
import 'package:news_app/model/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key, 
    required this.category,
  });
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 16
      ),
      child: Container(
        width: 160,
        height: 85,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(category.image)
            ),
          borderRadius: BorderRadius.circular(12),
          color: Colors.amber
        ),
        child: Center(
          child: Text(
            category.categoryName,
            style: 
            TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            backgroundColor: const Color.fromARGB(50, 158, 158, 158)
            ),
          ),
        ),
      ),
    );
  }
}
