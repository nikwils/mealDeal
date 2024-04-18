import 'package:auto_route/auto_route.dart';
import 'package:diet/data/models/meal.dart';
import 'package:diet/features/home/diet/diet_logic.dart';
import 'package:diet/globals/widgets/blurry_effect.dart';
import 'package:diet/services/imgs/imgs_controller_service.dart';
import 'package:diet/services/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({super.key});

  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  @override
  Widget build(BuildContext context) {
    final myRoute = AutoRouter.of(context);

    final heightPage = MediaQuery.of(context).size.height;
    return RefreshIndicator(
      onRefresh: () async {
        setState(() {});
      },
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  const BlurryEffect(),
                  Positioned(
                    left: 20,
                    top: 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Ваш рацион',
                          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            const Text(
                              'привезем ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w300),
                            ),
                            const Text(
                              'в день заказа',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 5),
                            SvgPicture.asset(ImgsControllerService.carDelivery.url()),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    height: heightPage,
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                const SizedBox(width: 9),
                                InkWell(
                                  onTap: () {
                                    setState(() {});
                                  },
                                  child: SvgPicture.asset(ImgsControllerService.update.url()),
                                ),
                                const SizedBox(width: 27),
                                const Text(
                                  'Блюдо',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const Wrap(
                              children: [
                                Text(
                                  'ккал',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 22,
                                ),
                                Text(
                                  'Цена,₽',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 15),
                        Expanded(
                          child: ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            itemBuilder: (context, index) {
                              final Meal currentMeal = DietLogic.getMeals[index];

                              return Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: Row(
                                      children: [
                                        const Text(
                                          'День 1',
                                          style: TextStyle(
                                              color: Color.fromRGBO(170, 170, 170, 1),
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(width: 24),
                                        Flexible(
                                          child: Text(
                                            currentMeal.name,
                                            softWrap: true,
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 10,
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Wrap(
                                    children: [
                                      Text(
                                        currentMeal.energyValue,
                                        style: const TextStyle(
                                            color: Colors.black, fontSize: 10, fontWeight: FontWeight.normal),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        currentMeal.price,
                                        style: const TextStyle(
                                            color: Colors.black, fontSize: 10, fontWeight: FontWeight.normal),
                                      ),
                                      const SizedBox(
                                        width: 24,
                                      ),
                                    ],
                                  )
                                ],
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(height: 16);
                            },
                            itemCount: DietLogic.getMealsLength,
                          ),
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            const Row(
                              children: [
                                Text(
                                  'ИТОГО',
                                  style: TextStyle(
                                      color: Color.fromRGBO(170, 170, 170, 1),
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'День 1',
                                  style: TextStyle(
                                      color: Color.fromRGBO(170, 170, 170, 1),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                                Wrap(
                                  children: [
                                    Text(
                                      DietLogic.sumOfEnergy().toString(),
                                      style: const TextStyle(
                                          color: Color.fromRGBO(170, 170, 170, 1),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    const SizedBox(width: 58),
                                    Text(
                                      DietLogic.sumOfPrice().toString(),
                                      style: const TextStyle(
                                          color: Color.fromRGBO(170, 170, 170, 1),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    const SizedBox(width: 24)
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(height: 30),
                            SizedBox(
                              height: 31,
                              child: ElevatedButton(
                                onPressed: () {
                                  myRoute.push(const SuccessShoppingCartRoute());
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromRGBO(62, 134, 37, 1)),
                                child: const Text(
                                  'Оформить заказ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MealWidget extends StatelessWidget {
  const MealWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
