import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_data.dart';
import 'package:travel_app/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //hytha safha raiisia ta3mel scaffold widget
    return Scaffold(
      appBar: AppBar(
        title: const Text("tourist guide"),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 7 / 8, //3orth wertife3
            mainAxisSpacing: 10,
            crossAxisSpacing: 10),
        children: Categories_data.map((categoryData) => CategoryItem(
              title: categoryData.title,
              imageUrl: categoryData.imageUrl,
              id: categoryData.id,
            )).toList(),
      ),
    ); //
  }
}
