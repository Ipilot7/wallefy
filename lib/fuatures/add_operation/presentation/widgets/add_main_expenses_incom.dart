// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallefy/common/app_colors.dart';
import 'package:wallefy/common/app_text_style.dart';

// ignore: must_be_immutable
class AddMainExpensesIncomeWidget extends StatelessWidget {
  String assetsText;
  String text;
  AddMainExpensesIncomeWidget({
    Key? key,
    required this.assetsText,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        height: 92.w,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8.r),
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
              assetsText,
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              text,
              style: AppTextStyles.body15w5.copyWith(color: AppColors.black),
            ),
          ],
        ),
      ),
    );
  }
}
