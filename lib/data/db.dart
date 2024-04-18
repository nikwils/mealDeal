import 'package:diet/data/models/meal.dart';
import 'package:diet/data/models/user.dart';

class DataBase {
  static final List<Meal> breakfasts = [
    Meal(
      id: 0,
      name: 'Глазунья с безглютеновой безлактозной сосиской',
      choice: 'Выбор ИИ',
      energyValue: '227 ккал',
      price: '191₽',
    ),
    Meal(
      id: 1,
      name: 'Скрембл с семгой на безглютеновом круассане',
      choice: 'Выбор ИИ',
      energyValue: '397 ккал',
      price: '381₽',
    ),
    Meal(
      id: 2,
      name: 'Гречневая каша с томатами и яйцом-пашот',
      choice: 'Выбор ИИ',
      energyValue: '308 ккал',
      price: '197₽',
    )
  ];
  static final List<Meal> dinners = [
    Meal(
      id: 0,
      name: 'Салат “Нисуаз” с тунцом и фермерскими овощами',
      choice: 'Выбор ИИ',
      energyValue: '425 ккал',
      price: '385₽',
    ),
    Meal(
      id: 1,
      name: 'Сёмга на гриле с фермерскими овощами',
      choice: 'Выбор ИИ',
      energyValue: '380 ккал',
      price: '440₽',
    ),
    Meal(
      id: 2,
      name: 'Теплый салат с булгуром и фермерскими овощами',
      choice: 'Выбор ИИ',
      energyValue: '290 ккал',
      price: '205₽',
    ),
    Meal(
      id: 3,
      name: 'Котлеты на пару с диким рисом',
      choice: 'Выбор ИИ',
      energyValue: '300 ккал',
      price: '165₽',
    ),
  ];
  static final List<Meal> snacks = [
    Meal(
      id: 0,
      name: 'Фруктовая тарелка',
      choice: 'Выбор ИИ',
      energyValue: '120 ккал',
      price: '250₽',
    ),
    Meal(
      id: 1,
      name: 'Нарезка морковь, сельдерей + хумус',
      choice: 'Выбор ИИ',
      energyValue: '120 ккал',
      price: '250₽',
    ),
  ];

  static List<User> users = [
    User(id: 0, username: 'dina', password: '12345'),
    User(id: 0, username: 'nastya', password: '12345'),
  ];
}
