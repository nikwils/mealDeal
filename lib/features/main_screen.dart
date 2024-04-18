import 'package:auto_route/auto_route.dart';
import 'package:diet/services/imgs/imgs_controller_service.dart';
import 'package:diet/services/router/router.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  createBottomNavigation({
    required String assetName,
    required String label,
  }) {
    return NavigationDestination(
      icon: SvgPicture.asset(
        assetName,
        fit: BoxFit.cover,
        height: assetName.contains('shopping') ? 44 : 41,
        width: assetName.contains('home') ? 37 : 41,
      ),
      selectedIcon: SvgPicture.asset(
        colorFilter: const ColorFilter.mode(Color.fromRGBO(4, 143, 34, 1), BlendMode.srcATop),
        assetName.contains('home') ? ImgsControllerService.homeActiveBottomSheet.url() : assetName,
        height: 41,
        width: assetName.contains('home') ? 37 : 41,
      ),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        ExpertsRoute(),
        ShoppingCartRoute(),
        ProfileRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        final childRouter = context.topRoute.router.currentPath;

        if (kDebugMode) {
          print(childRouter);
        }

        return Scaffold(
          bottomNavigationBar: NavigationBar(
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            indicatorColor: Colors.transparent,
            onDestinationSelected: (index) {
              setState(() {
                tabsRouter.setActiveIndex(index);
              });
            },
            selectedIndex: tabsRouter.activeIndex,
            destinations: [
              createBottomNavigation(assetName: ImgsControllerService.homeBottomSheet.url(), label: ''),
              createBottomNavigation(assetName: ImgsControllerService.expertsBottomSheet.url(), label: ''),
              createBottomNavigation(
                  assetName: ImgsControllerService.shoppingCartBottomSheet.url(), label: ''),
              createBottomNavigation(assetName: ImgsControllerService.profileBottomSheet.url(), label: ''),
            ],
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          body: child,
        );
      },
    );
  }
}
