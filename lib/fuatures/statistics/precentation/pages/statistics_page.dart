import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallefy/common/app_text_style.dart';
import 'package:wallefy/fuatures/statistics/precentation/widgets/custom_stock_chart.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/locale_data.dart';
import '../widgets/all_members_constatnts_type.dart';
import '../widgets/custom_line_chart.dart';
import '../widgets/person_indicator.dart';
import '../widgets/spending_break_down_item.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroud,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(vertical: 60.h),
          children: [
            Text('Statistics', style: AppTextStyles.body34w8),
            Padding(
              padding: EdgeInsets.only(top: 27.h, bottom: 17.h),
              child: Text('Expenses calendar', style: AppTextStyles.body20w7),
            ),
            Container(
              height: 300,
              margin: EdgeInsets.only(top: 17.h, bottom: 31.h),
              padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 31.h)
                  .copyWith(top: 24.h),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: const CustomStockChart(),
            ),
            Text('All members expenses', style: AppTextStyles.body20w7),
            Container(
              // height: 390.h,
              margin: EdgeInsets.only(top: 17.h),
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
            ),
            Padding(
              padding: EdgeInsets.only(top: 31.h, bottom: 17.h),
              child: Text(
                'Spending Breakdown',
                style: AppTextStyles.body20w7.copyWith(
                  color: AppColors.blue2,
                ),
              ),
            ),
            SizedBox(
              height: 330.h,
              child: GridView.count(
                crossAxisCount: 3,
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 10.h,
                crossAxisSpacing: 10.h,
                childAspectRatio: 0.81,
                children: List.generate(
                  6,
                  (index) => SpendingBreakDownItem(
                    spendingBreakDownModel: spendingBreakDownList[index],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
