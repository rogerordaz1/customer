import 'package:app/modules/auth/login/login_routes.dart';
import 'package:app/modules/auth/register/register_routes.dart';
import 'package:app/modules/home/home_routes.dart';
import 'package:app/modules/layout/routes/layout_routes.dart';
import 'package:app/modules/maps/maps_routes.dart';

class AppPages {
  AppPages._();

  static const initial = LoginRoutes.login;

  static final routes = [
    ...LoginRoutes.routes,
    ...RegisterRoutes.routes,
    ...LayoutRoutes.routes,
    ...HomeRoutes.routes,
    ...MapsRoutes.routes,
  ];
}
