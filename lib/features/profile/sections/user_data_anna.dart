import 'package:auto_route/auto_route.dart';
import 'package:diet/services/imgs/imgs_controller_service.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UserDataPage extends StatefulWidget {
  const UserDataPage({super.key});

  @override
  State<UserDataPage> createState() => _UserDataPageState();
}

class _UserDataPageState extends State<UserDataPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 240,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: const Color.fromARGB(255, 198, 198, 198))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    const SizedBox(height: 15),
                    Image.asset(ImgsControllerService.annaProfile.url(format: 'png')),
                  ],
                ),
                const SizedBox(width: 10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomInput(
                      width: 200,
                      hintText: 'Анна Иванова',
                      introduced: true,
                      label: 'Имя',
                    ),
                    SizedBox(height: 8),
                    CustomInput(
                      width: 270,
                      hintText: 'г. Москва, Стремянный пер., 36',
                      introduced: true,
                      label: 'Адрес доставки',
                    ),
                    SizedBox(height: 8),
                    CustomInput(
                      width: 180,
                      hintText: '18:30-22:30',
                      introduced: true,
                      label: 'Удобное время доставки',
                    ),
                    SizedBox(height: 8),
                    CustomInput(
                      width: 200,
                      hintText: 'введите email',
                      introduced: false,
                      label: 'email',
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 12),
          Container(
            height: 160,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: const Color.fromARGB(255, 198, 198, 198))),
            child: Column(
              children: [
                const Text(
                  'Тестирование',
                  style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomInput(
                          width: 160,
                          hintText: '1800 ккал/день',
                          introduced: true,
                          label: 'Ваш результат',
                          suffixIcon: false,
                        ),
                        SizedBox(height: 8),
                        CustomInput(
                          width: 160,
                          hintText: 'Домашняя кухня',
                          introduced: true,
                          label: 'Ваш рацион питания',
                          suffixIcon: false,
                        ),
                      ],
                    ),
                    const SizedBox(width: 15),
                    Column(
                      children: [
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 82,
                          width: 155,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(246, 255, 242, 1),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: const Color.fromRGBO(35, 105, 10, 1))),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Wrap(
                              alignment: WrapAlignment.center,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Text(
                                  'Пройти тестирование',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      height: 1.2,
                                      color: Color.fromRGBO(62, 134, 37, 1)),
                                ),
                                Text(
                                  'ещё раз',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      height: 1.2,
                                      color: Color.fromRGBO(62, 134, 37, 1)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 13),
          Container(
            height: 140,
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: const Color.fromRGBO(246, 255, 242, 1),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: const Color.fromRGBO(189, 218, 179, 1))),
            child: Column(
              children: [
                const Text(
                  'Ближайшая консультация',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 14),
                const Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.black,
                      size: 25,
                    ),
                    SizedBox(width: 10),
                    Wrap(
                      spacing: -2,
                      direction: Axis.vertical,
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text(
                          'У вас пока не назначена',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
                        ),
                        Text(
                          'встреча с экспертом',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: const Color.fromRGBO(189, 218, 179, 1))),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 0),
                    child: Text(
                      'Запланировать консультацию',
                      style: TextStyle(
                          fontSize: 10, fontWeight: FontWeight.bold, color: Color.fromRGBO(35, 105, 10, 1)),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}

class CustomInput extends StatelessWidget {
  const CustomInput(
      {super.key,
      required this.label,
      required this.hintText,
      required this.introduced,
      required this.width,
      this.suffixIcon = true});

  final double width;
  final String label;
  final String hintText;
  // Если true - значит значение введено и его текст будет ярче, false - не яркий hintText
  final bool introduced;
  final bool suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(color: Color.fromRGBO(169, 169, 169, 1), fontSize: 10),
        ),
        const SizedBox(height: 2),
        SizedBox(
          width: width,
          height: 28,
          child: TextFormField(
            decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(
                  color: introduced
                      ? const Color.fromRGBO(117, 117, 117, 1)
                      : const Color.fromRGBO(169, 169, 169, 1),
                ),
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(
                      width: 0.1,
                      color: Color.fromRGBO(210, 210, 210, 1),
                    )),
                contentPadding: const EdgeInsets.only(left: 10),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                  width: 1,
                  color: Color.fromRGBO(210, 210, 210, 1),
                )),
                fillColor: const Color.fromRGBO(251, 251, 251, 1),
                filled: true,
                suffixIcon: suffixIcon
                    ? const Icon(
                        Icons.edit_outlined,
                        size: 16,
                        color: Color.fromRGBO(170, 170, 170, 1),
                      )
                    : null),
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
          ),
        ),
      ],
    );
  }
}
