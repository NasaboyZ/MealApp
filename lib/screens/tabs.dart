import 'package:flutter/material.dart';
import 'package:newprojekt/models/meal.dart';
import 'package:newprojekt/screens/categories.dart';
import 'package:newprojekt/screens/meals.dart';
import 'package:newprojekt/widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;
  final List<Meal> _favoriteMeals = [];
  void _showinfoMessage(String message) {
    ScaffoldMessenger.of(context)
        .clearSnackBars(); // Clear existing SnackBars before showing a new one
    ScaffoldMessenger.of(context).showSnackBar(
      // Show a new SnackBar with the provided message
      SnackBar(
        // Create a SnackBar with the given message
        content: Row(
          children: [
            const Icon(
              Icons.info_outline,
              color: Colors.black,
            ),
            const SizedBox(width: 8),
            Text(message),
          ],
        ),

        duration: const Duration(
            seconds:
                2), // Set the duration for which the SnackBar will be visible
      ),
    );
  }

  void _toggleMealFavoriteStatus(Meal meal) {
    final isExisting = _favoriteMeals.contains(meal);
    setState(() {
      if (isExisting) {
        _favoriteMeals.remove(meal);
        _showinfoMessage(
            'Meal removed from favorites.'); // Show a message when a meal is removed from favorites
      } else {
        _favoriteMeals.add(meal);
        _showinfoMessage(
            'Meal added to favorites.'); // Show a message when a meal is added to favorites
      }
    });
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage =
        CategoriesScreen(onToggleFavorite: _toggleMealFavoriteStatus);

    var activePageTitle = 'Categories';
    if (_selectedPageIndex == 1) {
      activePage = MealsScreen(
          meals: _favoriteMeals, onToggleFavorite: _toggleMealFavoriteStatus);
      activePageTitle = 'Your Favorites';
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      drawer: const MainDrawer(), // Add a Drawer to the Scaffold
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal),
            label: 'categories',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'favorites'),
        ],
      ),
    );
  }
}
