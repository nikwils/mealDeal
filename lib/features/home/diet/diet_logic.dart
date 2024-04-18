import 'package:diet/data/models/meal.dart';

class DietLogic {
  DietLogic._();
  static final List<Meal> _items = [];
  static get getMeals => _items;
  static get getMealsLength => _items.length;

  static void addMeal(Meal meal) {
    _items.add(meal);
  }

  static void deleteMeal(Meal meal) {
    _items.remove(meal);
  }

  static int sumOfEnergy() {
    int sum = 0;
    for (var meal in _items) {
      sum += int.parse(meal.energyValue.split(' ').first);
    }
    return sum;
  }

  static int sumOfPrice() {
    int sum = 0;
    for (var meal in _items) {
      sum += int.parse(meal.price.split('').sublist(0, meal.price.length - 1).join());
    }
    return sum;
  }
}
