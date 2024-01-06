import 'package:firebase_auth_demo/screens/categoriItem.dart';
import 'package:firebase_auth_demo/shared/dummy_data.dart';
import 'package:flutter/material.dart';


class CategoryHome extends StatelessWidget {
  const CategoryHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.all(15),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 10 / 12),
        itemCount: dummyCategories.length,
        itemBuilder: (context, index) {
          final category = dummyCategories[index];
          return categoryItem(
            id: category.id,
            title: category.title,
            images: category.images,
          );
        });
  }
  
}