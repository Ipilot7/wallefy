// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:wallefy/common/app_colors.dart';
import 'package:wallefy/common/app_text_style.dart';

// ignore: must_be_immutable
class AddMainExpensesIncomeWidget extends StatefulWidget {
  String assetsText;
  String text;
  Color fillColor;

  AddMainExpensesIncomeWidget({
    Key? key,
    required this.assetsText,
    required this.text,
    required this.fillColor,
  }) : super(key: key);

  @override
  State<AddMainExpensesIncomeWidget> createState() =>
      _AddMainExpensesIncomeWidgetState();
}

class _AddMainExpensesIncomeWidgetState
    extends State<AddMainExpensesIncomeWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 92.w,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: widget.fillColor, width: 1.w),
        boxShadow: [
          BoxShadow(
            color: AppColors.dropShadowColor,
            offset: const Offset(0, 3),
            blurRadius: 14.r,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            widget.assetsText,
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            widget.text,
            style: AppTextStyles.body15w5.copyWith(color: AppColors.black),
          ),
        ],
      ),
    );
  }
}
