
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallefy/fuatures/statistics/precentation/widgets/person_indicator.dart';

import '../../../../common/all_constants.dart';
import 'all_members_constatnts_type.dart';
import 'custom_line_chart.dart';

class AllMembersExpensesWidget extends StatelessWidget {
  const AllMembersExpensesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 390.h,
      margin: EdgeInsets.only(top: 17.h, bottom: 31.h),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 24.h),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        children: [
          const AllMembersConstatntsType(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 27.h),
            child: Row(
              children: [
                PersonIndicators(
                  name: "You",
                  color: AppColors.blue,
                ),
                SizedBox(width: 12.w),
                const PersonIndicators(
                  name: "Alex",
                  color: AppColors.red,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 300.h,
            child: CustomLineChart(
              height: 285,
              width: 340.w,
              listCoordinates: listCoordinate,
              colorBorder1: AppColors.blue,
              colorBorder2: AppColors.red,
              borderWidth: 3,
              bgGrid: true,
              showLongPress: true,
            ),
          ),
        ],
      ),
    );
  }
}