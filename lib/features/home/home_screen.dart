import 'package:auto_route/auto_route.dart';
import 'package:diet/globals/widgets/blurry_effect.dart';
import 'package:diet/services/imgs/imgs_controller_service.dart';
import 'package:diet/services/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final myRoute = AutoRouter.of(context);

    return Scaffold(
      floatingActionButton: InkWell(
        onTap: () {
          context.navigateTo(ProfileRoute(
            children: [ListOrdersRoute(extendedCard: true)],
          ));
        },
        child: Stack(
          children: [
            SvgPicture.asset(ImgsControllerService.routeForm.url()),
            Positioned.fill(
              child: Image.asset(
                ImgsControllerService.route.url(format: 'png'),
              ),
            ),
          ],
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Stack(
              children: [
                BlurryEffect(),
                Positioned(
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          myRoute.push(const DietRoute());
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 150,
                              height: 150,
                              decoration:
                                  BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25)),
                            ),
                            const Positioned(
                              bottom: 10,
                              child: Text(
                                'Составить свой рацион',
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(37, 111, 71, 1)),
                              ),
                            ),
                            Positioned(
                              top: 4,
                              left: 20,
                              child: Image.asset(
                                ImgsControllerService.diet.url(format: 'png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      Stack(
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            decoration:
                                BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25)),
                          ),
                          const Positioned(
                            top: 15,
                            left: 10,
                            child: Text(
                              'Домашняя\nкухня',
                              style: TextStyle(
                                height: 1.2,
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const Positioned(
                            bottom: 10,
                            left: 10,
                            child: Wrap(
                              spacing: -2,
                              crossAxisAlignment: WrapCrossAlignment.start,
                              direction: Axis.vertical,
                              children: [
                                Text(
                                  '-2500 ккал',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w300,
                                    color: Color.fromRGBO(136, 136, 136, 1),
                                  ),
                                ),
                                Text(
                                  '2000₽/день',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromRGBO(136, 136, 136, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 30,
                            right: 0,
                            child: Image.asset(
                              ImgsControllerService.homeKitchen.url(format: 'png'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            decoration:
                                BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25)),
                          ),
                          const Positioned(
                            top: 15,
                            left: 10,
                            child: Text(
                              'Худею',
                              style: TextStyle(
                                height: 1.2,
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const Positioned(
                            bottom: 10,
                            left: 10,
                            child: Wrap(
                              spacing: -2,
                              crossAxisAlignment: WrapCrossAlignment.start,
                              direction: Axis.vertical,
                              children: [
                                Text(
                                  '-1800 ккал',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w300,
                                    color: Color.fromRGBO(136, 136, 136, 1),
                                  ),
                                ),
                                Text(
                                  '2000₽/день',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromRGBO(136, 136, 136, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 0,
                            top: 20,
                            child: Image.asset(
                              ImgsControllerService.losingWeight.url(format: 'png'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Stack(
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            decoration:
                                BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25)),
                          ),
                          const Positioned(
                            top: 15,
                            left: 10,
                            child: Text(
                              'Набор массы',
                              style: TextStyle(
                                height: 1.2,
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const Positioned(
                            bottom: 10,
                            left: 10,
                            child: Wrap(
                              spacing: -2,
                              crossAxisAlignment: WrapCrossAlignment.start,
                              direction: Axis.vertical,
                              children: [
                                Text(
                                  '-2500 ккал',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w300,
                                    color: Color.fromRGBO(136, 136, 136, 1),
                                  ),
                                ),
                                Text(
                                  '2000₽/день',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromRGBO(136, 136, 136, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 5,
                            bottom: 20,
                            child: Image.asset(
                              ImgsControllerService.weightGain.url(format: 'png'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      SvgPicture.asset(
                        ImgsControllerService.farmProducts.url(),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Image.asset(
                          ImgsControllerService.farmProducts.url(format: 'png'),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
