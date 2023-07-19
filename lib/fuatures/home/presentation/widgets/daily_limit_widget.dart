
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallefy/common/app_colors.dart';
import 'package:wallefy/common/app_text_style.dart';

import '../../../../common/assets.dart';

class DailyLimit extends StatelessWidget {
  const DailyLimit({
    super.key,
    required this.dailyLimit,
  });

  final bool dailyLimit;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: dailyLimit,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            height: 70.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: AppColors.white,
              boxShadow: const [
                BoxShadow(
                  color: Color(0xffE9E7F1),
                  offset: Offset(0, 18),
                  blurRadius: 18,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      Assets.icons.priority,
                      width: 5.w,
                      height: 22.w,
                      // ignore: deprecated_member_use
                      color: const Color(0xffF33720),
                    ),
                    SizedBox(
                      width: 13.w,
                    ),
                    Text(
                      "Your daily limit has been reached",
                      style: AppTextStyles.body15w4.copyWith(color: AppColors.black),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 24.w,
                    height: 24.w,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color(0xffB8B9E3),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.close, color: AppColors.white, size: 20.w),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 36.h,
          ),
        ],
      ),
    );
  }
}
