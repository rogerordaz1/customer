import 'package:app/core/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    Key? key,
    this.hintText,
    this.obscureText,
    this.controller,
    this.validator,
    this.autoDispose = true,
    this.multiline = false,
    this.keyboardType,
    this.contentPadding,
    this.hintStyle,
    this.isSearchTextfield = false,
  }) : super(key: key);

  final String? hintText;
  final bool? obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool autoDispose;
  final bool multiline;
  final TextInputType? keyboardType;
  final EdgeInsetsGeometry? contentPadding;
  final TextStyle? hintStyle;
  final bool isSearchTextfield;

  @override
  State createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  final RxBool _obscureText = true.obs;
  final _wrote = false.obs;

  @override
  void initState() {
    super.initState();
    if (widget.isSearchTextfield) {
      widget.controller?.addListener(listener);
    }
    _obscureText.value = widget.obscureText ?? false;
  }

  listener() {
    _wrote.value = widget.controller?.text.isNotEmpty ?? false;
  }

  @override
  void dispose() {
    if (widget.autoDispose) {
      if (widget.isSearchTextfield) {
        widget.controller?.removeListener(listener);
      }
      widget.controller?.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.r),
      borderSide: const BorderSide(color: AppColors.dark100),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Obx(
          () => TextFormField(
            keyboardType: widget.keyboardType,
            controller: widget.controller,
            obscureText: _obscureText.value,
            style: AppTextStyles.base,
            validator: widget.validator,
            decoration: InputDecoration(
              hintStyle: widget.hintStyle ?? AppTextStyles.base,
              isDense: true,
              filled: true,
              fillColor: AppThemes.themeData.canvasColor,
              enabledBorder: border,
              border: border,
              errorStyle: AppTextStyles.base,
              hintText: widget.hintText,
              contentPadding: widget.contentPadding ??
                  EdgeInsets.symmetric(horizontal: 16.w),
              suffixIcon: widget.isSearchTextfield
                  ? Padding(
                      padding: EdgeInsets.only(right: 16.w),
                      child: IconButton(
                        icon: Icon(
                          _wrote.isFalse ? TablerIcons.search : TablerIcons.x,
                          size: 20.h,
                        ),
                        onPressed: () {
                          if (_wrote.isTrue) {
                            widget.controller?.clear();
                          }
                        },
                      ),
                    )
                  : widget.obscureText != null
                      ? GestureDetector(
                          onTap: () => _obscureText.value = !_obscureText.value,
                          child: Padding(
                              padding: EdgeInsets.only(right: 16.w),
                              child: Icon(
                                  _obscureText.value
                                      ? TablerIcons.eye
                                      : TablerIcons.eye_off,
                                  size: 20.h)),
                        )
                      : const SizedBox.shrink(),
            ),
          ),
        ),
      ],
    );
  }
}
