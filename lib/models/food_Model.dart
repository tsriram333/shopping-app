enum complexity { easy, medium, hard }

enum affordability { economical, pricey, luxury }

class Food {
  final String id;
  final String image;
  final String title;
  final List<String> ingredients;
  final List<String> steps;
  final complexity;
  final affordability;
  final double duration;
  final List<String> category;

  Food(
      {this.affordability,
      this.complexity,
      this.category,
      this.title,
      this.duration,
      this.id,
      this.image,
      this.ingredients,
      this.steps});
}
