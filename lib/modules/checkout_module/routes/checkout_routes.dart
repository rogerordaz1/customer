import 'package:app/modules/checkout_module/pages/checkout_ticket_page.dart';
import 'package:app/modules/checkout_module/routes/checkout_binding.dart';
import 'package:get/get.dart';

class CheckoutRoutes {
  CheckoutRoutes._();

  static const checkout = '/checkout';

  static final routes = [
    GetPage(
      name: checkout,
      page: () => const CheckoutPage(),
      binding: CheckoutBinding(),
    ),
  ];
}
