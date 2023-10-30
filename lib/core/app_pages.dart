import 'package:app/modules/auth/login/routes/login_routes.dart';
import 'package:app/modules/auth/recovery_password/recovery_password.dart';
import 'package:app/modules/auth/register/routes/register_routes.dart';
import 'package:app/modules/home/routes/home_routes.dart';
import 'package:app/modules/layout/routes/layout_routes.dart';
import 'package:app/modules/maps/maps_routes.dart';
import 'package:app/modules/my_reservations/my_reservation.dart';
import 'package:app/modules/notifications/notification_routes.dart';
import 'package:app/modules/search/routes/search_routes.dart';
import 'package:app/modules/settings/settings_routes.dart';

class AppPages {
  AppPages._();

  static const initial = LoginRoutes.login;

  static final routes = [
    ...LoginRoutes.routes,
    ...RegisterRoutes.routes,
    ...RecoveryPasswordRoutes.routes,
    ...LayoutRoutes.routes,
    ...HomeRoutes.routes,
    ...MapsRoutes.routes,
    ...SettingsRoutes.routes,
    ...NotificationRoutes.routes,
    ...MyReservationRoutes.routes,
    ...SearchRoutes.routes
  ];
}
