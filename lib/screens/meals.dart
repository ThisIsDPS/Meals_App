import 'package:flutter/material.dart';
import 'package:meals_app_4/meal_item.dart';
import 'package:meals_app_4/models/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen(
      {super.key,
      this.title,
      required this.meals,
      required this.onToggleFavorite});

  final String? title;
  final List<Meal> meals;
  final void Function(Meal meal) onToggleFavorite;

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
      itemCount: meals.length,
      itemBuilder: (ctx, index) => MealItem(
        meal: meals[index],
        onToggleFavorite: onToggleFavorite,
      ),
    );

    // meals.clear();
    if (meals.isEmpty) {
      content = Center(
        child: Text(
          'Uh oh... Nothing here!',
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
        ),
      );
    }

    if (title == null) {
      return content;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
        centerTitle: false,
      ),
      body: content,
    );
  }
}
