import 'package:get/get.dart';

import 'notification.dart';

class NotificationRoutes {
  NotificationRoutes._();

  static const notification = '/notifications';

  static final routes = [
    GetPage(
      name: notification,
      page: () => const NotificationPage(),
      binding: NotificationBinding(),
    ),
  ];
}
