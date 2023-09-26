// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'package:wallefy/common/app_colors.dart';
import 'package:wallefy/common/app_text_style.dart';

class HomePercentIndicator extends StatelessWidget {
  const HomePercentIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 335.w,
            width: 335.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.white.withOpacity(0.63),
            ),
          ),
          Container(
            height: 260.w,
            width: 260.w,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(71, 47, 200, 0.19),
                  offset: Offset(0, 13),
                  blurRadius: 11,
                ),
              ],
            ),
            child: CircularPercentIndicator(
              radius: 130.w,
              percent: 0.7,
              startAngle: 180,
              lineWidth: 13.2.w,
              center: Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IndicatorCash(
                      cash: 765,
                      style: AppTextStyles.body40w5.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColors.blue2,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "spent soday",
                      style: AppTextStyles.body16w4.copyWith(color: AppColors.grey),
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 33.w),
                      child: Divider(
                        color: AppColors.grey,
                        height: 1.1.h,
                      ),
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Text(
                      "balance for today",
                      style: AppTextStyles.body16w4.copyWith(color: AppColors.grey),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    IndicatorCash(
                      cash: 1267,
                      style: AppTextStyles.body24w5.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 23.sp,
                        color: AppColors.green,
                      ),
                    ),
                  ],
                ),
              ),
              backgroundColor: AppColors.white,
              linearGradient: LinearGradient(
                colors: [
                  AppColors.blue,
                  AppColors.blue,
                ],
              ),
              circularStrokeCap: CircularStrokeCap.round,
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class IndicatorCash extends StatelessWidget {
  double cash;
  TextStyle style;
  IndicatorCash({
    Key? key,
    required this.cash,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "\$",
          style: AppTextStyles.body19w4.copyWith(
            color: AppColors.blue2,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          width: 2.w,
        ),
        Text(
          "$cash",
          style: style,
        )
      ],
    );
  }
}
