import 'package:flutter/material.dart';
import 'package:recipie/dummy_data.dart';
import 'package:recipie/meals.dart';
import 'package:recipie/meals_items.dart';

class CategoryMealscreen extends StatelessWidget {
  static const routename = '/category-meals';
  // final String CategoryId;
  // final String title;

  // const CategoryMealscreen(this.CategoryId, this.title);

  @override
  Widget build(BuildContext context) {
    final argrout =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final Categorytitle = argrout['title'];
    final categoryid = argrout['id'];
    final categoriesmeal = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryid);
    }).toList();

    return Scaffold(
      appBar: AppBar(title: Text(Categorytitle!)),
      body: ListView.builder(
        itemCount: categoriesmeal.length,
        itemBuilder: (BuildContext context, int index) {
          return MealsItems(
              id: categoriesmeal[index].id,
              title: categoriesmeal[index].title,
              ImageUrl: categoriesmeal[index].imageUrl,
              duration: categoriesmeal[index].duration,
              complexity: categoriesmeal[index].complexity,
              affordability: categoriesmeal[index].affordability);
        },
      ),
    );
  }
}
