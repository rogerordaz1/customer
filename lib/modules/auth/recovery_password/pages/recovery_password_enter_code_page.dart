import 'package:app/core/theme/app_colors.dart';
import 'package:app/modules/auth/register/controllers/register_controller.dart';

import 'package:app/modules/auth/widgets/custom_register_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:get/get.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:tabler_icons/tabler_icons.dart';

import '../../../../core/common/widgets/my_filled_button.dart';
import '../../../../core/common/widgets/widgets.dart';
import '../../../../core/theme/app_text_theme.dart';

class RecoveryPasswordEnterCodePage extends GetView<RegisterController> {
  const RecoveryPasswordEnterCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.black);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: SafeArea(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5.0.h),
                    child: const CustomBackButton(),
                  ),
                  SizedBox(height: 80.h),
                  const Center(
                    child: CustomRegisterTitles(
                      text: 'Recupera la cuenta',
                      isSubtitle: false,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  const CustomRegisterTitles(
                    text:
                        'Introduzca el codigo PIN que le hemos enviado en un correo/SMS',
                    isSubtitle: true,
                  ),
                  SizedBox(height: 60.h),
                  Center(
                    child: Text(
                      '04:99',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.dark400,
                          ),
                    ),
                  ),
                  SizedBox(height: 50.h),
                  //TODO: Reutilizar este Widget...
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: PinFieldAutoFill(
                      decoration: CirclePinDecoration(
                          gapSpace: 10,
                          bgColorBuilder:
                              const FixedColorBuilder(AppColors.dark0),
                          strokeWidth: 2,
                          strokeColorBuilder:
                              const FixedColorBuilder(Color(0xFFDADADA))),
                      currentCode: '',
                      onCodeSubmitted: (code) {},
                      onCodeChanged: (code) {},
                      codeLength: 6,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Center(
                    child: Text(
                      'Enviar otro código',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(bottom: 50.h),
                    child: MyFilledButton(
                      text: "Continuar",
                      onPressed: null,
                      iconData: TablerIcons.chevron_right,
                      style: AppTextStyles.base.s12.whiteColor.w500,
                      isDesingInverse: false,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
