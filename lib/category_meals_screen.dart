import 'package:flutter/material.dart';

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

    final categoryTitle = routeArgs.title;

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: const Center(
        child: Text('The Recipes For The Category!'),
      ),
    );
  }
}
