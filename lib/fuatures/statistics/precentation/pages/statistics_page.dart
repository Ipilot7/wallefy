import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallefy/common/app_text_style.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/locale_data.dart';
import '../widgets/custom_line_chart.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroud,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 60.h),
          children: [
            Text('Statistics', style: AppTextStyles.body34w8),
            Padding(
              padding: EdgeInsets.only(top: 27.h, bottom: 17.h),
              child: Text('Expenses calendar', style: AppTextStyles.body20w7),
            ),
            Container(
              height: 390.h,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14.h),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 38.h,
                        width: 116.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.blue,
                          borderRadius: BorderRadius.circular(50.r),
                        ),
                        child: Text(
                          'Week',
                          style: AppTextStyles.body13w7,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 300.h,
                    child: CustomLineChart(
                      height: 285,
                      width: 340.w,
                      listCoordinates: listCoordinate,
                      colorBorder: AppColors.green,
                      borderWidth: 3,
                      bgGrid: true,
                      showLongPress: true,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
