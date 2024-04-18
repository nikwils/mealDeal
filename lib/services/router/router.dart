import 'package:auto_route/auto_route.dart';
import 'package:diet/features/experts/experts_screen.dart';
import 'package:diet/features/home/diet/diet_screen.dart';
import 'package:diet/features/home/home_screen.dart';
import 'package:diet/features/main_screen.dart';
import 'package:diet/features/profile/profile_screen.dart';
import 'package:diet/features/profile/sections/list_orders.dart';
import 'package:diet/features/profile/sections/user_data_anna.dart';
import 'package:diet/features/shopping_cart/shopping_cart_screen.dart';
import 'package:diet/features/shopping_cart/success_shopping_cart_screen.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: MainRoute.page,
          initial: true,
          path: '/',
          children: [
            AutoRoute(
              path: 'home',
              page: HomeTab.page,
              initial: true,
              children: [
                AutoRoute(
                  page: HomeRoute.page,
                  path: '',
                ),
                AutoRoute(
                  page: DietRoute.page,
                  path: 'diet',
                ),
              ],
            ),
            AutoRoute(
              page: ExpertsRoute.page,
              path: 'experts',
            ),
            AutoRoute(
              path: 'shopping_cart',
              page: ShoppingCartTab.page,
              children: [
                AutoRoute(
                  page: ShoppingCartRoute.page,
                  path: '',
                ),
                AutoRoute(
                  page: SuccessShoppingCartRoute.page,
                  path: 'success_shopping_cart',
                ),
              ],
            ),
            AutoRoute(
              page: ProfileRoute.page,
              path: 'profile',
              children: [
                AutoRoute(page: UserDataRoute.page, initial: true, path: 'user_data'),
                AutoRoute(
                  page: ListOrdersRoute.page,
                  path: 'list_orders',
                ),
              ],
            ),
          ],
        ),
      ];
}

@RoutePage(name: 'HomeTab')
class HomeTabPage extends AutoRouter {
  const HomeTabPage({super.key});
}

@RoutePage(name: 'ShoppingCartTab')
class ShoppingCartTabPage extends AutoRouter {
  const ShoppingCartTabPage({super.key});
}

@RoutePage(name: 'ProfileTab')
class ProfileTabPage extends AutoRouter {
  const ProfileTabPage({super.key});
}
