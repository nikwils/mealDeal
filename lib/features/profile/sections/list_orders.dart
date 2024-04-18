import 'package:auto_route/auto_route.dart';
import 'package:diet/services/imgs/imgs_controller_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class ListOrdersPage extends StatefulWidget {
  const ListOrdersPage({this.extendedCard = false, super.key});

  final bool extendedCard;

  @override
  State<ListOrdersPage> createState() => _ListOrdersPageState();
}

class _ListOrdersPageState extends State<ListOrdersPage> {
  @override
  Widget build(BuildContext context) {
    /// Скрыть блок с вопросом
    ValueNotifier<bool> notifierExtendCard = ValueNotifier<bool>(widget.extendedCard);

    return SingleChildScrollView(
      child: Column(
        children: [
          ValueListenableBuilder<bool>(
              valueListenable: notifierExtendCard,
              builder: (context, value, child) {
                return InkWell(
                  onTap: () => notifierExtendCard.value = !notifierExtendCard.value,
                  child: Container(
                    height: notifierExtendCard.value ? 225 : 138,
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Доставка',
                                  style: TextStyle(color: Colors.black, fontSize: 15),
                                ),
                                Text(
                                  '8 позиций',
                                  style: TextStyle(
                                      color: Color.fromRGBO(136, 136, 136, 1),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Text(
                              '8 апреля',
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 83, 38, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Image.asset(ImgsControllerService.chef.url(format: 'png')),
                                const SizedBox(width: 4),
                                const Text(
                                  'Заказ №10159',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15, fontWeight: FontWeight.w300),
                                )
                              ],
                            ),
                            const Text(
                              'В пути',
                              style: TextStyle(
                                  color: Color.fromRGBO(62, 134, 37, 1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        const SizedBox(height: 16),
                        value
                            ? const Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'День 1',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 12, fontWeight: FontWeight.normal),
                                      ),
                                      SizedBox(width: 41),
                                      Text(
                                        '1086₽',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 12, fontWeight: FontWeight.normal),
                                      ),
                                      SizedBox(width: 41),
                                      Text(
                                        'рацион: Похудение',
                                        style: TextStyle(
                                            color: Color.fromRGBO(192, 192, 192, 1),
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    children: [
                                      Text(
                                        'День 2',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 12, fontWeight: FontWeight.normal),
                                      ),
                                      SizedBox(width: 41),
                                      Text(
                                        '1192₽',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 12, fontWeight: FontWeight.normal),
                                      ),
                                      SizedBox(width: 41),
                                      Text(
                                        'рацион: Похудение',
                                        style: TextStyle(
                                            color: Color.fromRGBO(192, 192, 192, 1),
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    children: [
                                      Text(
                                        'День 3',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 12, fontWeight: FontWeight.normal),
                                      ),
                                      SizedBox(width: 41),
                                      Text(
                                        '1008₽',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 12, fontWeight: FontWeight.normal),
                                      ),
                                      SizedBox(width: 41),
                                      Text(
                                        'рацион: Домашняя кухня',
                                        style: TextStyle(
                                            color: Color.fromRGBO(192, 192, 192, 1),
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    'Курьер привезет заказ до 20:30',
                                    style: TextStyle(
                                        color: Color.fromRGBO(62, 134, 37, 1),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              )
                            : const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Курьер привезет заказ до 20:30',
                                    style: TextStyle(
                                        color: Color.fromRGBO(62, 134, 37, 1),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'Поддержка',
                                    style: TextStyle(
                                      color: Color.fromRGBO(192, 192, 192, 1),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Color.fromRGBO(192, 192, 192, 1),
                                    ),
                                  ),
                                ],
                              ),
                      ],
                    ),
                  ),
                );
              }),
          const SizedBox(height: 14),
          Container(
            height: 145,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Доставка',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          '4 позиций',
                          style: TextStyle(
                              color: Color.fromRGBO(136, 136, 136, 1),
                              fontSize: 10,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Text(
                      '8 апреля',
                      style: TextStyle(
                          color: Color.fromRGBO(0, 83, 38, 1), fontSize: 16, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Image.asset(ImgsControllerService.chef.url(format: 'png')),
                        const SizedBox(width: 4),
                        const Text(
                          'Заказ №10153',
                          style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                    const Text(
                      'Заказ отменен',
                      style: TextStyle(
                          color: Color.fromRGBO(120, 7, 0, 1), fontSize: 12, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 25,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 11),
                          backgroundColor: Colors.white,
                          shadowColor: Colors.white,
                          surfaceTintColor: Colors.white,
                          side: const BorderSide(color: Color.fromRGBO(62, 134, 37, 1)),
                        ),
                        onPressed: () {},
                        child: Wrap(
                          children: [
                            SvgPicture.asset(ImgsControllerService.update.url()),
                            const SizedBox(width: 5),
                            const Text(
                              'Повторить заказ',
                              style: TextStyle(
                                  color: Color.fromRGBO(62, 134, 37, 1),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      'Поддержка',
                      style: TextStyle(
                        color: Color.fromRGBO(192, 192, 192, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        decoration: TextDecoration.underline,
                        decorationColor: Color.fromRGBO(192, 192, 192, 1),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 14),
          Container(
            height: 145,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Доставка',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          '6 позиций',
                          style: TextStyle(
                              color: Color.fromRGBO(136, 136, 136, 1),
                              fontSize: 10,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Text(
                      '6 апреля',
                      style: TextStyle(
                          color: Color.fromRGBO(0, 83, 38, 1), fontSize: 16, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Image.asset(ImgsControllerService.chef.url(format: 'png')),
                        const SizedBox(width: 4),
                        const Text(
                          'Заказ №10108',
                          style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                    const Text(
                      'Успешно завершен',
                      style: TextStyle(
                          color: Color.fromRGBO(62, 134, 37, 1), fontSize: 12, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 25,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 11),
                          backgroundColor: Colors.white,
                          shadowColor: Colors.white,
                          surfaceTintColor: Colors.white,
                          side: const BorderSide(color: Color.fromRGBO(62, 134, 37, 1)),
                        ),
                        onPressed: () {},
                        child: Wrap(
                          children: [
                            SvgPicture.asset(ImgsControllerService.update.url()),
                            const SizedBox(width: 5),
                            const Text(
                              'Повторить заказ',
                              style: TextStyle(
                                  color: Color.fromRGBO(62, 134, 37, 1),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      'Поддержка',
                      style: TextStyle(
                        color: Color.fromRGBO(192, 192, 192, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        decoration: TextDecoration.underline,
                        decorationColor: Color.fromRGBO(192, 192, 192, 1),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 14),
          Container(
            height: 145,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Доставка',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          '12 позиций',
                          style: TextStyle(
                              color: Color.fromRGBO(136, 136, 136, 1),
                              fontSize: 10,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Text(
                      '3 апреля',
                      style: TextStyle(
                          color: Color.fromRGBO(0, 83, 38, 1), fontSize: 16, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Image.asset(ImgsControllerService.chef.url(format: 'png')),
                        const SizedBox(width: 4),
                        const Text(
                          'Заказ №10004',
                          style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                    const Text(
                      'Успешно завершен',
                      style: TextStyle(
                          color: Color.fromRGBO(62, 134, 37, 1), fontSize: 12, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 25,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 11),
                          backgroundColor: Colors.white,
                          shadowColor: Colors.white,
                          surfaceTintColor: Colors.white,
                          side: const BorderSide(color: Color.fromRGBO(62, 134, 37, 1)),
                        ),
                        onPressed: () {},
                        child: Wrap(
                          children: [
                            SvgPicture.asset(ImgsControllerService.update.url()),
                            const SizedBox(width: 5),
                            const Text(
                              'Повторить заказ',
                              style: TextStyle(
                                  color: Color.fromRGBO(62, 134, 37, 1),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      'Поддержка',
                      style: TextStyle(
                        color: Color.fromRGBO(192, 192, 192, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        decoration: TextDecoration.underline,
                        decorationColor: Color.fromRGBO(192, 192, 192, 1),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 14),
          Container(
            height: 145,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Доставка',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          '8 позиций',
                          style: TextStyle(
                              color: Color.fromRGBO(136, 136, 136, 1),
                              fontSize: 10,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Text(
                      '1 апреля',
                      style: TextStyle(
                          color: Color.fromRGBO(0, 83, 38, 1), fontSize: 16, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Image.asset(ImgsControllerService.chef.url(format: 'png')),
                        const SizedBox(width: 4),
                        const Text(
                          'Заказ №00994',
                          style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                    const Text(
                      'Успешно завершен',
                      style: TextStyle(
                          color: Color.fromRGBO(62, 134, 37, 1), fontSize: 12, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 25,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 11),
                          backgroundColor: Colors.white,
                          shadowColor: Colors.white,
                          surfaceTintColor: Colors.white,
                          side: const BorderSide(color: Color.fromRGBO(62, 134, 37, 1)),
                        ),
                        onPressed: () {},
                        child: Wrap(
                          children: [
                            SvgPicture.asset(ImgsControllerService.update.url()),
                            const SizedBox(width: 5),
                            const Text(
                              'Повторить заказ',
                              style: TextStyle(
                                  color: Color.fromRGBO(62, 134, 37, 1),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      'Поддержка',
                      style: TextStyle(
                        color: Color.fromRGBO(192, 192, 192, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        decoration: TextDecoration.underline,
                        decorationColor: Color.fromRGBO(192, 192, 192, 1),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
