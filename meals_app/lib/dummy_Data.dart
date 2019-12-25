import 'models/category_Model.dart';
import 'models/food_Model.dart';
import 'package:flutter/material.dart';

class CategoryData {
  static final List<Category> data = [
    Category(
      id: "c1",
      color: Colors.grey,
      title: "Indian",
    ),
    Category(
      id: "c2",
      color: Colors.purple,
      title: "Burgers",
    ),
    Category(
      id: "c3",
      color: Colors.yellow,
      title: "Biryani",
    ),
    Category(
      id: "c4",
      color: Colors.blue,
      title: "Pasta",
    ),
    Category(
      id: "c5",
      color: Colors.grey,
      title: "noodles",
    ),
    Category(
      id: "c6",
      color: Colors.purple,
      title: "fast food",
    ),
    Category(
      id: "c7",
      color: Colors.yellow,
      title: "rice",
    ),
    Category(
      id: "c8",
      color: Colors.blue,
      title: "roti",
    ),
    Category(
      id: "c9",
      color: Colors.yellow,
      title: "mutton",
    ),
    Category(
      id: "c10",
      color: Colors.blue,
      title: "chicken",
    ),
  ];
}

class FoodData {
  static final List data = [
    Food(
      title: "chicken",
      affordability: affordability.pricey,
      category: ["c1", "c2", "c3"],
      complexity: complexity.easy,
      duration: 25.30,
      id: "b9",
      image:
          "https://img.buzzfeed.com/video-api-prod/assets/e0852050640d4474aaf3542d61f2568a/FB.jpg",
      steps: ["get water", "pur water", "boil water", "drink water"],
      ingredients: [
        "chicken",
        "water",
        "Rice",
        "plate",
        "thums up",
        "mutton",
        "leaves"
      ],
    ),
    Food(
      title: "chicken",
      affordability: affordability.pricey,
      category: ["c1", "c2", "c3", "c10"],
      complexity: complexity.medium,
      duration: 25.30,
      id: "b11",
      image:
          "https://www.thespruceeats.com/thmb/cN-9EkcVnSQ059XnjLk7btVwh-g=/960x0/filters:no_upscale():max_bytes(150000):strip_icc()/buttered-herb-pasta-recipe-481984-13_preview-5b05f67a04d1cf003ae2d7ce.jpeg",
      steps: ["get water", "pur water", "boil water", "drink water"],
      ingredients: [
        "chicken",
        "water",
        "Rice",
        "plate",
        "thums up",
        "mutton",
        "leaves"
      ],
    ),
    Food(
      title: "Biryani",
      affordability: affordability.pricey,
      category: ["c1", "c2", "c3"],
      complexity: complexity.hard,
      duration: 25.30,
      id: "b1",
      image:
          "https://img.buzzfeed.com/video-api-prod/assets/e0852050640d4474aaf3542d61f2568a/FB.jpg",
      steps: ["get water", "pur water", "boil water", "drink water"],
      ingredients: [
        "chicken",
        "water",
        "Rice",
        "plate",
        "thums up",
        "mutton",
        "leaves"
      ],
    ),
    Food(
      title: "Biryani",
      affordability: affordability.pricey,
      category: ["c1", "c2", "c3"],
      complexity: complexity.hard,
      duration: 25.30,
      id: "b1",
      image:
          "https://img.buzzfeed.com/video-api-prod/assets/e0852050640d4474aaf3542d61f2568a/FB.jpg",
      steps: ["get water", "pur water", "boil water", "drink water"],
      ingredients: [
        "chicken",
        "water",
        "Rice",
        "plate",
        "thums up",
        "mutton",
        "leaves"
      ],
    ),
    Food(
      title: "Biryani",
      affordability: affordability.pricey,
      category: ["c1", "c2", "c3", "c6"],
      complexity: complexity.hard,
      duration: 25.30,
      id: "b1",
      image:
          "https://img.buzzfeed.com/video-api-prod/assets/e0852050640d4474aaf3542d61f2568a/FB.jpg",
      steps: ["get water", "pur water", "boil water", "drink water"],
      ingredients: [
        "chicken",
        "water",
        "Rice",
        "plate",
        "thums up",
        "mutton",
        "leaves"
      ],
    ),
    Food(
      title: "Biryani",
      affordability: affordability.pricey,
      category: ["c1", "c2", "c3"],
      complexity: complexity.hard,
      duration: 25.30,
      id: "b1",
      image:
          "https://img.buzzfeed.com/video-api-prod/assets/e0852050640d4474aaf3542d61f2568a/FB.jpg",
      steps: ["get water", "pur water", "boil water", "drink water"],
      ingredients: [
        "chicken",
        "water",
        "Rice",
        "plate",
        "thums up",
        "mutton",
        "leaves"
      ],
    )
  ];
}
