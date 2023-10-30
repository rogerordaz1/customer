import 'dart:async';
import 'package:app/core/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Common {
  Common._();

  static void showError(String error) {
    Get.showSnackbar(
      GetSnackBar(
        messageText: Text(
          error,
          style: AppTextStyles.base.w700.s16.whiteColor,
        ),
        margin: const EdgeInsets.all(20),
        borderRadius: 24,
        backgroundColor: AppColors.red400,
        duration: const Duration(milliseconds: 2000),
        snackPosition: SnackPosition.TOP,
      ),
    );
  }

  static void showLoading() async {
    await Get.dialog(
      Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: AppColors.white,
          ),
          child: const Padding(
            padding: EdgeInsets.all(24.0),
            child: CircularProgressIndicator(
              color: AppColors.primary,
            ),
          ),
        ),
      ),
      // barrierColor: AppColors.white.withOpacity(0.8),
      barrierDismissible: true,
      transitionCurve: Curves.easeInOutBack,
    );
  }

  static Future<bool> showConfirm({
    String? title,
    String? content,
    String cancel = 'Cancel',
    String confirm = 'Confirm',
  }) async {
    bool result = false;
    await Get.dialog(
      AlertDialog(
        actionsPadding: const EdgeInsets.only(right: 16, bottom: 16),
        title: Text(
          title ?? 'Delete confirmation',
          style: AppTextStyles.base.w700.s16.blackColor,
        ),
        content: Text(
          content ?? 'Are you sure you want to delete this feature?',
          style: AppTextStyles.base.w400.s14.blackColor,
        ),
        actions: [
          TextButton(
            child:
                Text(cancel, style: AppTextStyles.base.s15.w500.primaryColor),
            onPressed: () {
              if (Get.isDialogOpen!) Get.back();
            },
          ),
          TextButton(
            child: Text(confirm, style: AppTextStyles.base.s15.w500.redColor),
            onPressed: () {
              result = true;
              if (Get.isDialogOpen!) Get.back();
            },
          ),
        ],
      ),
      barrierColor: Colors.black26,
      transitionCurve: Curves.easeInOutBack,
    );
    return result;
  }

  static Future showSuccess({String? title}) async {
    Timer? timer;
    return await Get.dialog(
      Builder(
        builder: (BuildContext builderContext) {
          timer = Timer(const Duration(seconds: 2), () {
            if (Get.isDialogOpen!) Get.back();
          });

          return Center(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: AppColors.white,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 16),
                  const CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.check,
                      color: AppColors.white,
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: Get.width * 2 / 3,
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      title ?? 'Successful',
                      style: AppTextStyles
                          .base.w600.s16.noneDecoration.primaryColor,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
      barrierColor: Colors.black26,
      transitionCurve: Curves.easeInOutBack,
    ).then((val) {
      if (timer!.isActive) {
        timer!.cancel();
      }
    });
  }

  static void dismissKeyboard() => Get.focusScope!.unfocus();
}
