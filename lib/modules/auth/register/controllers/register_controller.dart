import 'package:app/data/models/models.dart';
import 'package:app/data/states/states.dart';
import 'package:app/modules/auth/register/controllers/activate_state.dart';
import 'package:app/modules/auth/register/controllers/register_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/common/widgets/common.dart';
import '../../../../data/provider/providers.dart';

typedef GetAuth = Future<Either<Auth, String?>>;

class RegisterController extends GetxController {
  final AuthProvider provider;

  RegisterController({required this.provider});

  final phoneNumberTController = TextEditingController();
  final emailTController = TextEditingController();
  final passwordTController = TextEditingController();
  final repeatPasswordTController = TextEditingController();

  final activationCodeTController = TextEditingController();

  final enableBtn = false.obs;

  final keyForm = GlobalKey<FormState>();

  final registerState = RegisterState.initial().obs;
  final activateState = ActivateState.initial().obs;

  Future<bool> register() async {
    final email = emailTController.text.trim();
    final phoneNumber = phoneNumberTController.text.trim();
    final password = passwordTController.text.trim();

    registerState.value = RegisterState.loading();

    final getAuth = await provider.register(
        email: email, phoneNumber: phoneNumber, password: password);

    return getAuth.when(
      left: (auth) {
        registerState.value = RegisterState.success(auth: auth);
        return auth.isSuccess;
      },
      right: (error) {
        registerState.value = RegisterState.error(error);
        return false;
      },
    );
  }

  Future<bool> submit() async {
    final isOK = keyForm.currentState!.validate();
    Common.dismissKeyboard();
    if (isOK) {
      final isAuthSuccess = await register();
      return isAuthSuccess;
    }
    return false;
  }

  Future<bool> activate() async {
    final activationCode = activationCodeTController.text;
    activateState.value = ActivateState.loading();
    final authResult = await provider.activate(activationCode);
    return authResult.when(
      left: (auth) {
        activateState.value = ActivateState.success(auth: auth);
        return auth.isSuccess;
      },
      right: (error) {
        activateState.value = ActivateState.error(error);
        return false;
      },
    );
  }
}
