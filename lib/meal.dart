enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability { Affordable, Pricey, Luxurious }

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final int duration;
  final List<String> ingredients;
  final List<String> steps;
  final Complexity complexity;
  final Affordability affordability;
  final bool isVegan;
  final bool isGlutenFree;
  final bool isVegetarian;
  final bool isLactoseFree;

const  Meal(
      {this.id,
      this.categories,
      this.complexity,
      this.imageUrl,
      this.ingredients,
      this.isVegan,
      this.steps,
      this.title,
      this.affordability,
      this.duration,
      this.isGlutenFree,
      this.isLactoseFree,
      this.isVegetarian});
}
