import 'package:auto_route/auto_route.dart';
import 'package:diet/data/db.dart';
import 'package:diet/data/models/meal.dart';
import 'package:diet/features/home/diet/diet_logic.dart';
import 'package:diet/globals/widgets/blurry_effect.dart';
import 'package:diet/services/imgs/imgs_controller_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class DietPage extends StatefulWidget {
  const DietPage({super.key});

  @override
  State<DietPage> createState() => _DietPageState();
}

class _DietPageState extends State<DietPage> {
  @override
  Widget build(BuildContext context) {
    final heightPage = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                const BlurryEffect(),
                Positioned(
                  top: 15,
                  left: 15,
                  child: BackButton(
                    style: IconButton.styleFrom(
                      iconSize: 20,
                      minimumSize: const Size(48, 48),
                      backgroundColor: const Color.fromRGBO(245, 248, 254, 1),
                      shape: const CircleBorder(),
                    ),
                  ),
                ),
                const Positioned(
                  left: 20,
                  top: 70,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Выберите рацион',
                        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'по своим предпочтениям',
                        style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  height: heightPage,
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                  child: const Column(
                    children: [
                      Wrap(
                        children: [
                          Text(
                            'Составить свой рацион',
                            style: TextStyle(
                                color: Color.fromRGBO(52, 83, 41, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'на основе ваших предпочтений',
                            style: TextStyle(
                                color: Color.fromRGBO(146, 209, 255, 1),
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MealWidget(title: 'Завтрак'),
                            MealWidget(title: 'Обед'),
                            MealWidget(title: 'Ужин'),
                            MealWidget(title: 'Перекус'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MealWidget extends StatefulWidget {
  const MealWidget({super.key, required this.title});

  final String title;

  @override
  State<MealWidget> createState() => _MealWidgetState();
}

class _MealWidgetState extends State<MealWidget> {
  String choicePictureForMeal({required String type}) {
    return switch (type) {
      'Завтрак' => ImgsControllerService.breakfast.url(format: 'png'),
      'Обед' => ImgsControllerService.lunch.url(format: 'png'),
      'Ужин' => ImgsControllerService.dinner.url(format: 'png'),
      'Перекус' => ImgsControllerService.snack.url(format: 'png'),
      _ => ImgsControllerService.breakfast.url(format: 'png'),
    };
  }

  Color choiceColorBackgroundForMeal({required String type}) {
    return switch (type) {
      'Завтрак' => const Color.fromRGBO(251, 247, 235, 1),
      'Обед' => const Color.fromRGBO(247, 255, 224, 1),
      'Ужин' => const Color.fromRGBO(237, 255, 233, 1),
      'Перекус' => const Color.fromRGBO(244, 254, 242, 1),
      _ => const Color.fromRGBO(251, 247, 235, 1)
    };
  }

  Color choiceColorBorderForMeal({required String type}) {
    return switch (type) {
      'Завтрак' => const Color.fromRGBO(178, 168, 139, 1),
      'Обед' => const Color.fromRGBO(131, 146, 89, 1),
      'Ужин' => const Color.fromRGBO(113, 144, 106, 1),
      'Перекус' => const Color.fromRGBO(171, 189, 167, 1),
      _ => const Color.fromRGBO(178, 168, 139, 1)
    };
  }

  List<Meal> choiceDB({required String type}) {
    return switch (type) {
      'Завтрак' => DataBase.breakfasts,
      'Обед' => DataBase.dinners,
      'Ужин' => DataBase.dinners,
      'Перекус' => DataBase.snacks,
      _ => DataBase.dinners
    };
  }

  Map<String, int> mapCounter = {
    'Завтрак': 0,
    'Обед': 0,
    'Ужин': 0,
    'Перекус': 0,
  };
  int counter = 0;
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    List<Meal> meals = choiceDB(type: widget.title);
    Meal currentMeal = meals[counter];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(
              color: Color.fromRGBO(52, 83, 41, 1), fontSize: 13, fontWeight: FontWeight.normal),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Container(
              width: 84,
              height: 84,
              decoration: BoxDecoration(
                  color: choiceColorBackgroundForMeal(type: widget.title),
                  border: Border.all(color: choiceColorBorderForMeal(type: widget.title)),
                  borderRadius: BorderRadius.circular(15)),
              child: Image.asset(choicePictureForMeal(type: widget.title)),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                height: 84,
                decoration: BoxDecoration(
                    color: choiceColorBackgroundForMeal(type: widget.title),
                    border: Border.all(color: choiceColorBorderForMeal(type: widget.title)),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              currentMeal.name,
                              softWrap: true,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 10, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Wrap(
                            children: [
                              Text(
                                currentMeal.choice,
                                style: const TextStyle(
                                  color: Color.fromRGBO(146, 209, 255, 1),
                                  fontSize: 9,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SvgPicture.asset(ImgsControllerService.ai.url())
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '${currentMeal.energyValue}, ${currentMeal.price}',
                          style: const TextStyle(
                              color: Color.fromRGBO(147, 179, 136, 1),
                              fontSize: 8,
                              fontWeight: FontWeight.normal),
                        ),
                        if (!selected) ...[
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  constraints: const BoxConstraints(),
                                  padding: EdgeInsets.zero,
                                  style: IconButton.styleFrom(
                                    iconSize: 21,
                                    minimumSize: const Size(21, 21),
                                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (counter + 1 == meals.length) {
                                        counter = 0;
                                      } else {
                                        counter += 1;
                                      }
                                      mapCounter[widget.title] = counter;
                                    });
                                  },
                                  icon: SvgPicture.asset(
                                    ImgsControllerService.change.url(),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                SizedBox(
                                  height: 20,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        selected = true;
                                        DietLogic.addMeal(currentMeal);
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                        padding: const EdgeInsets.symmetric(horizontal: 20),
                                        backgroundColor: const Color.fromRGBO(209, 232, 205, 1),
                                        side: const BorderSide(color: Color.fromRGBO(0, 143, 66, 1))),
                                    child: const Text(
                                      'Выбрать',
                                      style: TextStyle(
                                          color: Color.fromRGBO(40, 118, 27, 1),
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                        if (selected) ...[
                          const SizedBox(width: 30),
                          SizedBox(
                            height: 20,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  selected = false;
                                  DietLogic.deleteMeal(currentMeal);
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  backgroundColor: const Color.fromRGBO(245, 233, 133, 1),
                                  side: const BorderSide(color: Color.fromRGBO(255, 201, 0, 1))),
                              child: const Text(
                                'Заменить',
                                style: TextStyle(
                                    color: Color.fromRGBO(107, 96, 0, 1),
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
