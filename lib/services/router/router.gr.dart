// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    DietRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DietPage(),
      );
    },
    ExpertsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ExpertsPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    HomeTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeTabPage(),
      );
    },
    ListOrdersRoute.name: (routeData) {
      final args = routeData.argsAs<ListOrdersRouteArgs>(
          orElse: () => const ListOrdersRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ListOrdersPage(
          extendedCard: args.extendedCard,
          key: args.key,
        ),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    ProfileTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileTabPage(),
      );
    },
    ShoppingCartRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ShoppingCartPage(),
      );
    },
    ShoppingCartTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ShoppingCartTabPage(),
      );
    },
    SuccessShoppingCartRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SuccessShoppingCartPage(),
      );
    },
    UserDataRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UserDataPage(),
      );
    },
  };
}

/// generated route for
/// [DietPage]
class DietRoute extends PageRouteInfo<void> {
  const DietRoute({List<PageRouteInfo>? children})
      : super(
          DietRoute.name,
          initialChildren: children,
        );

  static const String name = 'DietRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ExpertsPage]
class ExpertsRoute extends PageRouteInfo<void> {
  const ExpertsRoute({List<PageRouteInfo>? children})
      : super(
          ExpertsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExpertsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeTabPage]
class HomeTab extends PageRouteInfo<void> {
  const HomeTab({List<PageRouteInfo>? children})
      : super(
          HomeTab.name,
          initialChildren: children,
        );

  static const String name = 'HomeTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ListOrdersPage]
class ListOrdersRoute extends PageRouteInfo<ListOrdersRouteArgs> {
  ListOrdersRoute({
    bool extendedCard = false,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ListOrdersRoute.name,
          args: ListOrdersRouteArgs(
            extendedCard: extendedCard,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ListOrdersRoute';

  static const PageInfo<ListOrdersRouteArgs> page =
      PageInfo<ListOrdersRouteArgs>(name);
}

class ListOrdersRouteArgs {
  const ListOrdersRouteArgs({
    this.extendedCard = false,
    this.key,
  });

  final bool extendedCard;

  final Key? key;

  @override
  String toString() {
    return 'ListOrdersRouteArgs{extendedCard: $extendedCard, key: $key}';
  }
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileTabPage]
class ProfileTab extends PageRouteInfo<void> {
  const ProfileTab({List<PageRouteInfo>? children})
      : super(
          ProfileTab.name,
          initialChildren: children,
        );

  static const String name = 'ProfileTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ShoppingCartPage]
class ShoppingCartRoute extends PageRouteInfo<void> {
  const ShoppingCartRoute({List<PageRouteInfo>? children})
      : super(
          ShoppingCartRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShoppingCartRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ShoppingCartTabPage]
class ShoppingCartTab extends PageRouteInfo<void> {
  const ShoppingCartTab({List<PageRouteInfo>? children})
      : super(
          ShoppingCartTab.name,
          initialChildren: children,
        );

  static const String name = 'ShoppingCartTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SuccessShoppingCartPage]
class SuccessShoppingCartRoute extends PageRouteInfo<void> {
  const SuccessShoppingCartRoute({List<PageRouteInfo>? children})
      : super(
          SuccessShoppingCartRoute.name,
          initialChildren: children,
        );

  static const String name = 'SuccessShoppingCartRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UserDataPage]
class UserDataRoute extends PageRouteInfo<void> {
  const UserDataRoute({List<PageRouteInfo>? children})
      : super(
          UserDataRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserDataRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
