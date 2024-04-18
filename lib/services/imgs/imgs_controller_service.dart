enum ImgsControllerService {
  homeBottomSheet,
  homeActiveBottomSheet,
  expertsBottomSheet,
  shoppingCartBottomSheet,
  profileBottomSheet,
  appBar,
  diet,
  farmProducts,
  homeKitchen,
  losingWeight,
  route,
  weightGain,
  routeForm,
  breakfast,
  lunch,
  dinner,
  snack,
  ai,
  change,
  anna,
  anna1,
  anna2,
  anna3,
  anna4,
  elena,
  andrey,
  vika,
  carDelivery,
  annaProfile,
  elenaProfile,
  update,
  chef,
  chefImg,
  calendar,
}

extension ImgsControllerServiceExtension on ImgsControllerService {
  String url({String format = 'svg'}) {
    final resolution = format;
    const String images = 'assets/images';
    return switch (this) {
      ImgsControllerService.homeBottomSheet => '$images/home.$resolution',
      ImgsControllerService.homeActiveBottomSheet => '$images/home_active.$resolution',
      ImgsControllerService.expertsBottomSheet => '$images/experts.$resolution',
      ImgsControllerService.shoppingCartBottomSheet => '$images/shopping_cart.$resolution',
      ImgsControllerService.profileBottomSheet => '$images/profile.$resolution',
      ImgsControllerService.appBar => '$images/app_bar.$resolution',
      ImgsControllerService.diet => '$images/diet.$resolution',
      ImgsControllerService.farmProducts => '$images/farm_products.$resolution',
      ImgsControllerService.homeKitchen => '$images/home_kitchen.$resolution',
      ImgsControllerService.losingWeight => '$images/losing_weight.$resolution',
      ImgsControllerService.route => '$images/route.$resolution',
      ImgsControllerService.weightGain => '$images/weight_gain.$resolution',
      ImgsControllerService.routeForm => '$images/route_form.$resolution',
      ImgsControllerService.breakfast => '$images/breakfast.$resolution',
      ImgsControllerService.lunch => '$images/lunch.$resolution',
      ImgsControllerService.dinner => '$images/dinner.$resolution',
      ImgsControllerService.snack => '$images/snack.$resolution',
      ImgsControllerService.ai => '$images/ai.$resolution',
      ImgsControllerService.change => '$images/change.$resolution',
      ImgsControllerService.anna => '$images/anna.$resolution',
      ImgsControllerService.anna1 => '$images/anna_1.$resolution',
      ImgsControllerService.anna2 => '$images/anna_2.$resolution',
      ImgsControllerService.anna3 => '$images/anna_3.$resolution',
      ImgsControllerService.anna4 => '$images/anna_4.$resolution',
      ImgsControllerService.elena => '$images/elena.$resolution',
      ImgsControllerService.andrey => '$images/andrey.$resolution',
      ImgsControllerService.vika => '$images/vika.$resolution',
      ImgsControllerService.carDelivery => '$images/car_delivery.$resolution',
      ImgsControllerService.annaProfile => '$images/anna_profile.$resolution',
      ImgsControllerService.elenaProfile => '$images/elena_profile.$resolution',
      ImgsControllerService.update => '$images/update.$resolution',
      ImgsControllerService.chef => '$images/chef.$resolution',
      ImgsControllerService.chefImg => '$images/chef_img.$resolution',
      ImgsControllerService.calendar => '$images/calendar.$resolution',
    };
  }
}