import 'package:azcok/components/bottom_navigation_bar.dart';
import 'package:azcok/data/Categories.dart';
import 'package:azcok/models/Category.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for(Category category in sortedCategories)
              ListTile(
                isThreeLine: true,
                title: Text(category.categoryName),
                subtitle: Text("${category.totalProduct.toString()} ürün"),
                trailing: Image.asset(category.categoryPic),
              )
          ],
        ),
      ),
      bottomNavigationBar: customBottomNavigationBar(context),
    );
  }
}
