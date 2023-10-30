import 'package:app/modules/layout/layout.dart';
import 'package:get/get.dart';
import 'package:flutter/widgets.dart';
import 'package:app/data/models/models.dart';
import 'package:app/data/states/states.dart';
import 'package:app/core/common/widgets/widgets.dart';
import 'package:app/data/provider/providers.dart';
import 'login_state.dart';

typedef GetAuth = Future<Either<Auth, List<String?>>>;

class LoginController extends GetxController {
  LoginController({required this.provider});
  final AuthProvider provider;

  @override
  void onClose() {
    userEditingController.dispose();
    passEditingController.dispose();
    super.onClose();
  }

  final userEditingController = TextEditingController();
  final passEditingController = TextEditingController();
  final keyForm = GlobalKey<FormState>();

  final loginState = LoginState.initial().obs;

  @override
  void onInit() {
    userEditingController.text = 'gegonzalez@co.cu';
    passEditingController.text = '123Qwe*';
    super.onInit();
  }

  GetAuth login() async {
    final user = userEditingController.text.trim();
    final pass = passEditingController.text;
    final result = await provider.token(user, pass);
    return result;
  }

  Future<void> submit() async {
    final isOK = keyForm.currentState!.validate();
    Common.dismissKeyboard();
    if (isOK) {
      Common.showLoading();
      final getAuth = await login();
      if (Get.isDialogOpen!) Get.back();
      getAuth.when(
        left: (auth) {
          loginState.value = LoginState.isSuccess(auth: auth);
          if (auth.isSuccess) {
            Get.offNamed(LayoutRoutes.name);
          }
        },
        right: (error) {
          loginState.value = LoginState.error(error);
        },
      );
    }
  }
}
