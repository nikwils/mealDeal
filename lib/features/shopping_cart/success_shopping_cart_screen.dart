import 'package:auto_route/auto_route.dart';
import 'package:diet/globals/widgets/blurry_effect.dart';
import 'package:diet/services/imgs/imgs_controller_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class SuccessShoppingCartPage extends StatefulWidget {
  const SuccessShoppingCartPage({super.key});

  @override
  State<SuccessShoppingCartPage> createState() => _SuccessShoppingCartPageState();
}

class _SuccessShoppingCartPageState extends State<SuccessShoppingCartPage> {
  @override
  Widget build(BuildContext context) {
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
                            style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w300),
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
              child: Column(
                children: [
                  const SizedBox(height: 48),
                  SizedBox(
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: const BorderSide(color: Color.fromRGBO(62, 134, 37, 1))),
                      child: const Text(
                        'Заказ успешно оформлен!',
                        style: TextStyle(
                            color: Color.fromRGBO(62, 134, 37, 1), fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  const SizedBox(height: 27),
                  const Column(
                    children: [
                      Text(
                        'Курьер свяжется с вами, чтобы уточнить',
                        style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w200),
                      ),
                      Text(
                        'детали доставки',
                        style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w200),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
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
