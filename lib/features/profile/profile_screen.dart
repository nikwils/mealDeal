import 'package:auto_route/auto_route.dart';
import 'package:diet/features/profile/log_in.dart';
import 'package:diet/features/profile/profile_screen_elena.dart';
import 'package:diet/globals/widgets/blurry_effect.dart';
import 'package:diet/services/authorization/repos/authentication_repository.dart';
import 'package:diet/services/imgs/imgs_controller_service.dart';
import 'package:diet/services/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<AuthenticationStatus>(
      stream: AuthenticationRepository.status,
      builder: (context, snapshot) {
        if (snapshot.data == AuthenticationStatus.authenticatedAnna) {
          return const ProfileWidget();
        } else if (snapshot.data == AuthenticationStatus.authenticatedElena) {
          return const ProfileElenaWidget();
        } else {
          return const LoginWidget();
        }
      },
    );
  }
}

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    final String childRouter = context.topRoute.router.currentPath;

    List<String> inactiveFloatingButtonList = [
      '/profile/list_orders',
    ];

    return Scaffold(
      floatingActionButton: inactiveFloatingButtonList.contains(childRouter)
          ? null
          : InkWell(
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
                    Image.asset(ImgsControllerService.annaProfile.url(format: 'png')),
                    const SizedBox(width: 15),
                    const Wrap(
                      direction: Axis.vertical,
                      alignment: WrapAlignment.start,
                      children: [
                        Text(
                          'Анна Ивановна',
                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                        Text(
                          'г. Москва',
                          style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: AutoTabsRouter(
              routes: [
                const UserDataRoute(),
                ListOrdersRoute(),
              ],
              builder: (context, child) {
                return Column(
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
                            NavigationButtonSection(
                              activeFirst: context.tabsRouter.activeIndex == 0 ? true : false,
                            ),
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
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: child,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class NavigationButtonSection extends StatefulWidget {
  const NavigationButtonSection({super.key, required this.activeFirst});

  final bool activeFirst;

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
                side: BorderSide(
                    color: widget.activeFirst
                        ? const Color.fromRGBO(62, 134, 37, 1)
                        : const Color.fromRGBO(189, 189, 189, 1)),
              ),
              onPressed: () {
                setState(() {
                  context.tabsRouter.setActiveIndex(0);
                });
              },
              child: Text(
                'Мои данные',
                style: TextStyle(
                    color: widget.activeFirst
                        ? const Color.fromRGBO(62, 134, 37, 1)
                        : const Color.fromRGBO(189, 189, 189, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          const SizedBox(width: 14),
          SizedBox(
            height: 30,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 11),
                backgroundColor: Colors.white,
                side: BorderSide(
                    color: !widget.activeFirst
                        ? const Color.fromRGBO(62, 134, 37, 1)
                        : const Color.fromRGBO(189, 189, 189, 1)),
              ),
              onPressed: () {
                setState(() {
                  context.tabsRouter.setActiveIndex(1);
                });
              },
              child: Text(
                'Мои заказы',
                style: TextStyle(
                    color: !widget.activeFirst
                        ? const Color.fromRGBO(62, 134, 37, 1)
                        : const Color.fromRGBO(189, 189, 189, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          const SizedBox(width: 14),
        ],
      ),
    );
  }
}
