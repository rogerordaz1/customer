import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/modules/settings/settings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:app/core/common/widgets/widgets.dart';
import 'package:app/core/theme/themes.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:sms_autofill/sms_autofill.dart';

class CheckCodePage extends GetView<CheckCodeController> {
  const CheckCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Align(
                  alignment: Alignment.centerLeft, child: CustomBackButton()),
              const SizedBox(height: 48),
              Text('Verificar código', style: AppTextStyles.base.s28.w500),
              const SizedBox(height: 8),
              Text('Introduzca el código PIN que le hemos enviado en un correo',
                  textAlign: TextAlign.center, style: AppTextStyles.base.w500),
              const SizedBox(height: 72),
              Text('04:99', style: AppTextStyles.base),
              const SizedBox(height: 32),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: PinFieldAutoFill(
                  keyboardType: TextInputType.number,
                  decoration: CirclePinDecoration(
                      obscureStyle: ObscureStyle(isTextObscure: true),
                      errorTextStyle: AppTextStyles.base,
                      gapSpace: 10,
                      bgColorBuilder: const FixedColorBuilder(AppColors.dark0),
                      strokeWidth: 2,
                      strokeColorBuilder:
                          const FixedColorBuilder(Color(0xFFDADADA))),
                  currentCode: '',
                  onCodeSubmitted: (code) {},
                  onCodeChanged: (code) {
                    if (code?.length == 6) {
                      FocusScope.of(context).requestFocus(FocusNode());
                    }
                    controller.enable.value = code?.length == 6 ? true : false;
                  },
                  codeLength: 6,
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 24),
              //   child: PinCodeTextField(
              //     appContext: context,
              //     animationType: AnimationType.fade,
              //     length: 6,
              //     obscureText: true,
              //     blinkWhenObscuring: true,
              //     hintCharacter: '•',
              //     useHapticFeedback: true,
              //     hintStyle: AppTextStyles.base.s24.w900,
              //     keyboardType: TextInputType.number,
              //     textStyle: AppTextStyles.base.s14,
              //     cursorColor: AppColors.black,
              //     onChanged: (value) {
              //       controller.enable.value = value.length == 6 ? true : false;
              //     },
              //     pinTheme: PinTheme(
              //       shape: PinCodeFieldShape.circle,
              //       fieldHeight: 40.h,
              //       fieldWidth: 40.w,
              //       selectedColor: AppColors.dark200,
              //       inactiveColor: AppColors.dark200,
              //       activeColor: AppColors.dark200,
              //     ),
              //   ),
              // ),
              const SizedBox(height: 32),
              TextButton(
                  onPressed: () {},
                  child: Text('Enviar otro código',
                      style: AppTextStyles.base.w500)),
              const SizedBox(height: 32),
              const Spacer(),
              ObxValue(
                  (e) => MyFilledButton(
                      text: 'Continuar',
                      iconData: TablerIcons.chevron_right,
                      colors: e.value
                          ? null
                          : const [AppColors.dark200, AppColors.dark200],
                      textColor: e.value ? AppColors.white : AppColors.black,
                      onPressed: () {
                        if (e.value) {
                          Get.toNamed(
                              '${SettingsRoutes.settings}${SettingsRoutes.changePass}');
                        }
                      }),
                  controller.enable),
            ],
          ),
        ),
      ),
    ));
  }
}
