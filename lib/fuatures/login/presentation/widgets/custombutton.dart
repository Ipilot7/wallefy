import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/app_text_style.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    this.verPadding,
    this.textStyle,
    this.horPadding,
    this.height,
    required this.onTap,
  });

  final Function() onTap;
  final String text;
  final TextStyle? textStyle;
  final double? verPadding, height;
  final double? horPadding;

  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
      onPressed: onTap,
      height: height ?? 58.h,
      padding: EdgeInsets.symmetric(
          horizontal: horPadding ?? 20.w, vertical: verPadding ?? 10.h),
      color: AppColors.red,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.r)),
      child: Text(
        text,
        style: textStyle ??
            AppTextStyles.body15w6.copyWith(color: AppColors.white),
      ),
    );
  }
}
