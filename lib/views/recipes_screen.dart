import 'package:flutter/material.dart';
import 'widgets/recipe_card.dart';

class RecipesScreen extends StatelessWidget {
  const RecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            RecipeCard(),
            RecipeCard(),
            RecipeCard(),
            RecipeCard(),
            RecipeCard(),
            RecipeCard(),
          ],
        ),
      ),
    );
  }
}