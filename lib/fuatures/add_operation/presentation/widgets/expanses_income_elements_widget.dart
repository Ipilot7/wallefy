import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:wallefy/common/app_colors.dart';
import 'package:wallefy/common/app_text_style.dart';

// ignore: must_be_immutable
class ExpansesIncomeRow extends StatelessWidget {
  bool onCheck;
  String assetsText;
  String text;
  ExpansesIncomeRow({
    Key? key,
    this.onCheck = false,
    required this.assetsText,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(assetsText, width: 25.w, height: 25.w),
              SizedBox(
                width: 9.w,
              ),
              Text(
                text,
                style: AppTextStyles.body15w5.copyWith(
                  color: AppColors.black,
                ),
              ),
            ],
          ),
          onCheck ? const Icon(Icons.check) : const SizedBox.shrink()
        ],
      ),
    );
  }
}

class OtherElementsWidget extends StatelessWidget {
  const OtherElementsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 28.w,
          width: 28.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(7.r),
          ),
          child: const Icon(
            Icons.more_horiz,
          ),
        ),
        SizedBox(
          width: 8.w,
        ),
        Text(
          "Other",
          style: AppTextStyles.body15w5.copyWith(
            color: AppColors.black,
          ),
        ),
      ],
    );
  }
}
