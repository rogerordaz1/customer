import 'package:app/modules/auth/login/login_routes.dart';
import 'package:app/modules/home/home_routes.dart';
import 'package:app/modules/layout/pages/layout_routes.dart';
import 'package:app/modules/maps/maps_routes.dart';

class AppPages {
  AppPages._();

  static const initial = LayoutRoutes.name;

  static final routes = [
    ...LoginRoutes.routes,
    ...LayoutRoutes.routes,
    ...HomeRoutes.routes,
    ...MapsRoutes.routes,
  ];
}
