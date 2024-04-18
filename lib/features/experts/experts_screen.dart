import 'package:auto_route/auto_route.dart';
import 'package:diet/globals/widgets/blurry_effect.dart';
import 'package:diet/services/imgs/imgs_controller_service.dart';
import 'package:diet/services/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class ExpertsPage extends StatefulWidget {
  const ExpertsPage({super.key});

  @override
  State<ExpertsPage> createState() => _ExpertsPageState();
}

class _ExpertsPageState extends State<ExpertsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: InkWell(
        onTap: () => context.navigateTo(ProfileRoute(
          children: [ListOrdersRoute(extendedCard: true)],
        )),
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
                        'Выберите эксперта',
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
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  Container(
                    height: 120,
                    padding: const EdgeInsets.only(left: 20, top: 17, right: 10, bottom: 9),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Flexible(
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Image.asset(ImgsControllerService.anna.url(format: 'png')),
                                  const Text(
                                    'Анна Л.',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12, fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 30),
                              const Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Об эксперте',
                                      style: TextStyle(
                                          color: Color.fromRGBO(156, 156, 156, 1),
                                          fontSize: 6,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    Flexible(
                                      child: Text(
                                        'Анна окажет профессиональную помощь, если у вас возникли сложности c тревожными расстройствами, расстройствами пищевого поведения. Помимо этого, Анна поможет разобраться с внутренними конфликтами, связанными с необходимостью...',
                                        softWrap: true,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 8, fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Специализации:',
                                  style: TextStyle(
                                      color: Color.fromRGBO(156, 156, 156, 1),
                                      fontSize: 6,
                                      fontWeight: FontWeight.normal),
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  children: [
                                    SvgPicture.asset(ImgsControllerService.anna1.url()),
                                    const SizedBox(width: 2),
                                    SvgPicture.asset(ImgsControllerService.anna2.url()),
                                  ],
                                ),
                                const SizedBox(height: 2),
                                Row(
                                  children: [
                                    SvgPicture.asset(ImgsControllerService.anna3.url()),
                                    const SizedBox(width: 2),
                                    SvgPicture.asset(ImgsControllerService.anna4.url()),
                                  ],
                                )
                              ],
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Консультация: от 45 мин',
                                  style: TextStyle(
                                      color: Color.fromRGBO(60, 106, 44, 1),
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  'от 1500 ₽',
                                  style: TextStyle(
                                      color: Color.fromRGBO(60, 106, 44, 1),
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 13),
                  Container(
                    height: 120,
                    padding: const EdgeInsets.only(left: 20, top: 17, right: 10, bottom: 9),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Flexible(
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Image.asset(ImgsControllerService.elena.url(format: 'png')),
                                  const Text(
                                    'Елена Т.',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12, fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 30),
                              const Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Об эксперте',
                                      style: TextStyle(
                                          color: Color.fromRGBO(156, 156, 156, 1),
                                          fontSize: 6,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    Flexible(
                                      child: Text(
                                        'Елена окажет профессиональную помощь, если у вас возникли сложности c тревожными расстройствами, расстройствами пищевого поведения. Помимо этого, Елена поможет разобраться с внутренними конфликтами, связанными с необходимостью...',
                                        softWrap: true,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 8, fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Специализации:',
                                  style: TextStyle(
                                      color: Color.fromRGBO(156, 156, 156, 1),
                                      fontSize: 6,
                                      fontWeight: FontWeight.normal),
                                ),
                                const SizedBox(height: 4),
                                SvgPicture.asset(ImgsControllerService.anna1.url()),
                                const SizedBox(height: 2),
                                SvgPicture.asset(ImgsControllerService.anna2.url()),
                              ],
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Консультация: от 45 мин',
                                  style: TextStyle(
                                      color: Color.fromRGBO(60, 106, 44, 1),
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  'от 1000 ₽',
                                  style: TextStyle(
                                      color: Color.fromRGBO(60, 106, 44, 1),
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 13),
                  Container(
                    height: 120,
                    padding: const EdgeInsets.only(left: 20, top: 17, right: 10, bottom: 9),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Flexible(
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Image.asset(ImgsControllerService.andrey.url(format: 'png')),
                                  const Text(
                                    'Андрей Ш.',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12, fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 30),
                              const Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Об эксперте',
                                      style: TextStyle(
                                          color: Color.fromRGBO(156, 156, 156, 1),
                                          fontSize: 6,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    Flexible(
                                      child: Text(
                                        'Андрей окажет профессиональную помощь, если у вас возникли сложности c тревожными расстройствами, расстройствами пищевого поведения. Помимо этого, Андрей поможет разобраться с внутренними конфликтами, связанными с необходимостью...',
                                        softWrap: true,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 8, fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Специализации:',
                                  style: TextStyle(
                                      color: Color.fromRGBO(156, 156, 156, 1),
                                      fontSize: 6,
                                      fontWeight: FontWeight.normal),
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  children: [
                                    SvgPicture.asset(ImgsControllerService.anna1.url()),
                                    const SizedBox(width: 2),
                                    SvgPicture.asset(ImgsControllerService.anna2.url()),
                                  ],
                                ),
                                const SizedBox(height: 2),
                                SvgPicture.asset(ImgsControllerService.anna3.url()),
                                const SizedBox(width: 2),
                              ],
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Консультация: от 45 мин',
                                  style: TextStyle(
                                      color: Color.fromRGBO(60, 106, 44, 1),
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  'от 1900 ₽',
                                  style: TextStyle(
                                      color: Color.fromRGBO(60, 106, 44, 1),
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 13),
                  Container(
                    height: 120,
                    padding: const EdgeInsets.only(left: 20, top: 17, right: 10, bottom: 9),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Flexible(
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Image.asset(ImgsControllerService.vika.url(format: 'png')),
                                  const Text(
                                    'Виктория М.',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12, fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 30),
                              const Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Об эксперте',
                                      style: TextStyle(
                                          color: Color.fromRGBO(156, 156, 156, 1),
                                          fontSize: 6,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    Flexible(
                                      child: Text(
                                        'Виктория окажет профессиональную помощь, если у вас возникли сложности c тревожными расстройствами, расстройствами пищевого поведения. Помимо этого, Виктория поможет разобраться с внутренними конфликтами, связанными с необходимостью...',
                                        softWrap: true,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 8, fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Специализации:',
                                  style: TextStyle(
                                      color: Color.fromRGBO(156, 156, 156, 1),
                                      fontSize: 6,
                                      fontWeight: FontWeight.normal),
                                ),
                                const SizedBox(height: 4),
                                SvgPicture.asset(ImgsControllerService.anna1.url()),
                                const SizedBox(height: 2),
                                SvgPicture.asset(ImgsControllerService.anna2.url()),
                              ],
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Консультация: от 45 мин',
                                  style: TextStyle(
                                      color: Color.fromRGBO(60, 106, 44, 1),
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  'от 1800 ₽',
                                  style: TextStyle(
                                      color: Color.fromRGBO(60, 106, 44, 1),
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 13),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
