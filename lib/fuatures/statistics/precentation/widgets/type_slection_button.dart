import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/app_text_style.dart';

class TypeSelectionButton extends StatelessWidget {
  const TypeSelectionButton({
    super.key,
    required this.text,
    required this.isActive,
    required this.onTap, this.padding,
  });
  final String text;
  final bool isActive;
  final Function() onTap;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 38.h,
        padding: EdgeInsets.symmetric(horizontal:padding?? 35.w),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isActive ? AppColors.blue : Colors.transparent,
          borderRadius: BorderRadius.circular(50.r),
        ),
        child: Text(
          text,
          style: AppTextStyles.body13w7.copyWith(
            color: isActive ? AppColors.white : AppColors.black,
          ),
        ),
      ),
    );
  }
}
