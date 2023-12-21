import 'package:flutter/material.dart';
import 'package:fluttermeals/data/dummy_data.dart';

class CategoryMealsScreenArguments {
  final String id;
  final String title;

  CategoryMealsScreenArguments(this.id, this.title);
}

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category_meals';

  const CategoryMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final route = ModalRoute.of(context);
    if (route == null) return const SizedBox.shrink();
    final routeArgs = route.settings.arguments as CategoryMealsScreenArguments;

    final categoryId = routeArgs.id;
    final categoryTitle = routeArgs.title;
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
          child: ListView.builder(
            itemBuilder: (ctx, i) {
              return Text(categoryMeals[i].title);
            },
            itemCount: categoryMeals.length,
          ),
          ),
    );
  }
}
