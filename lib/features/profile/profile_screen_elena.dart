import 'package:diet/globals/widgets/blurry_effect.dart';
import 'package:diet/services/authorization/repos/authentication_repository.dart';
import 'package:diet/services/imgs/imgs_controller_service.dart';
import 'package:flutter/material.dart';

class ProfileElenaWidget extends StatefulWidget {
  const ProfileElenaWidget({super.key});

  @override
  State<ProfileElenaWidget> createState() => _ProfileElenaWidgetState();
}

class _ProfileElenaWidgetState extends State<ProfileElenaWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Stack(
            children: [
              const BlurryEffect(),
              Positioned(
                left: 30,
                top: 60,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(ImgsControllerService.elenaProfile.url(format: 'png')),
                    const SizedBox(width: 15),
                    const Wrap(
                      direction: Axis.vertical,
                      alignment: WrapAlignment.start,
                      children: [
                        Text(
                          'Елена Т.',
                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                        Text(
                          'Эксперт',
                          style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const NavigationButtonSection(),
                      TextButton(
                          onPressed: () async {
                            await AuthenticationRepository.logOut();
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: const Text('Выход',
                              style: TextStyle(
                                  color: Color.fromRGBO(120, 7, 0, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400)))
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 210,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: const Color.fromARGB(255, 198, 198, 198))),
                  child: Column(
                    children: [
                      const Text(
                        'Мой день',
                        style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomInput(
                                width: 140,
                                hintText: '09:00-20:00',
                                introduced: true,
                                label: 'Рабочие часы',
                              ),
                              SizedBox(height: 8),
                              CustomInput(
                                width: 30,
                                hintText: '4',
                                introduced: true,
                                label: 'Кол-во записей на сегодня:',
                                suffixIcon: false,
                              ),
                              SizedBox(height: 8),
                              CustomInput(
                                width: 190,
                                hintText: 'elenatert@mealday.ru',
                                introduced: true,
                                label: 'Адрес эл. рабочей почты',
                                suffixIcon: false,
                              ),
                            ],
                          ),
                          Image.asset(ImgsControllerService.calendar.url(format: 'png')),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                    width: double.infinity,
                    height: 50,
                    padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: const Color.fromARGB(255, 198, 198, 198))),
                    child: const Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text(
                          'Редактировать свой график ',
                          style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                          color: Color.fromRGBO(15, 169, 88, 1),
                        )
                      ],
                    )),
              ),
            ],
          ),
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

class NavigationButtonSection extends StatefulWidget {
  const NavigationButtonSection({super.key});

  @override
  State<NavigationButtonSection> createState() => _NavigationButtonSectionState();
}

class _NavigationButtonSectionState extends State<NavigationButtonSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          SizedBox(
            height: 30,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 11),
                backgroundColor: Colors.white,
                side: const BorderSide(color: Color.fromRGBO(62, 134, 37, 1)),
              ),
              onPressed: () {},
              child: const Text(
                'Мой график',
                style: TextStyle(
                    color: Color.fromRGBO(62, 134, 37, 1), fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
