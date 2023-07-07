import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallefy/common/app_colors.dart';
import 'package:wallefy/common/app_text_style.dart';

class CardItemValueWidget extends StatelessWidget {
  const CardItemValueWidget({
    super.key,
    required this.value,
    this.width = 162,
    this.alignment,
    this.maxLines,
    this.margin,
  });

  final String value;
  final double width;
  final EdgeInsets? margin;
  final int? maxLines;
  final Alignment? alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      margin: margin,
      alignment: alignment ?? Alignment.centerLeft,
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        border: Border.all(
          color: AppColors.black.withOpacity(0.1),
        ),
      ),
      child: AutoSizeText(
        value,
        maxLines: maxLines ?? 1,
        minFontSize: 12,
        overflow: TextOverflow.ellipsis,
        style: AppTextStyles.body15w4.copyWith(color: AppColors.black),
      ),
    );
  }
}
