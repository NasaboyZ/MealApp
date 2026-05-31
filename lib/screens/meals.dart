import 'package:flutter/material.dart';
import 'package:newprojekt/models/meal.dart';
import 'package:newprojekt/screens/meal_details.dart';
import 'package:newprojekt/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  
  const MealsScreen({super.key, this.title, required this.meals, this.onToggleFavorite});
  
  final String? title;
  
  final List<Meal> meals;

  final void Function(Meal meal)? onToggleFavorite;
  void selectMeal(BuildContext context, Meal meal) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MealdetailsScreen(meal: meal, onToggleFavorite: onToggleFavorite),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content = const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('No meals found. Please try again later.'),
          SizedBox(height: 16),
          Text(
            'Try selecting a different category!',
            style: TextStyle(
              color: Color(0xFF757575),
            ),
          ),
        ],
      ),
    );
    if (meals.isNotEmpty) {
      content = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) => MealItem(
          meal: meals[index],
          onSelectMeal: (meal) {
            selectMeal(context, meal);
          },
      
        ),
      );
    }
    if (title == null) {
      return content;
    }
    return Scaffold(
        appBar: AppBar(
          title: Text(title!),
        ),
        body: content);
  }
}
