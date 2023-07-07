import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../common/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hinttext,
    required this.controller,
    required this.prefixIcon,
    required this.inputType,
    this.validate = false,
    this.inputFormatter,
    this.obscureText,
    this.contentPadding,
  });

  final String hinttext;
  final EdgeInsets? contentPadding;
  final TextEditingController controller;
  final String prefixIcon;
  final TextInputType inputType;
  final bool validate;
  final List<TextInputFormatter>? inputFormatter;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: AppColors.grey, borderRadius: BorderRadius.circular(10.r)),
      height: 54.h,
      child: Row(
        children: [
          Container(
              width: 54.h,
              height: 54.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.grey,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.r),
                    bottomLeft: Radius.circular(10.r)),
              ),
              child: SvgPicture.asset(prefixIcon)),
          const VerticalDivider(
            width: 1,
          ),
          Flexible(
            child: TextField(
              obscureText: obscureText ?? false,
              inputFormatters: inputFormatter,
              controller: controller,
              cursorColor: AppColors.red,
              keyboardType: inputType,
              decoration: InputDecoration(
                errorText: validate ? "majburiy maydon to'ldirilmagan *" : null,
                contentPadding: contentPadding ?? EdgeInsets.only(left: 10.w),
                fillColor: AppColors.grey,
                hintText: hinttext,
                border: InputBorder.none,
                disabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.r),
                      bottomRight: Radius.circular(10.r)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
