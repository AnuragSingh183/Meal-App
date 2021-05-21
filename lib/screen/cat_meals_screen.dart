import 'package:flutter/material.dart';

import 'package:food/meals.dart';
import '../widgets/meal_item.dart';

class CategoryMeals extends StatelessWidget {
  //static const routeName = "/categories";
  //final String id;
  //final String title;
  //CategoryMeals(this.id,this.title);
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final title = routeArgs["title"];
    final id = routeArgs["id"];

    final filteredMeal = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(id);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(
              title: filteredMeal[index].title,
              imageUrl: filteredMeal[index].imageUrl,
              duration: filteredMeal[index].duration,
              affordability: filteredMeal[index].affordability,
              complexity: filteredMeal[index].complexity,
            );
          },
          itemCount: filteredMeal.length,
        ));
  }
}
