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

String getComplexity(complexity comp) {
  switch (comp) {
    case complexity.easy:
      return "Easy";
    case complexity.hard:
      return "Hard";
    case complexity.medium:
      return "Medium";
    default:
      return "";
  }
}

String getAffordability(affordability aff) {
  switch (aff) {
    case affordability.economical:
      return "Economical";
    case affordability.luxury:
      return "Luxury";
    case affordability.pricey:
      return "Costly";
    default:
      return "null";
  }
}
