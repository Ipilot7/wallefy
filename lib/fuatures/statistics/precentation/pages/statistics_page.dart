import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:wallefy/fuatures/statistics/precentation/widgets/custom_stock_chart.dart';

import '../../../../common/all_constants.dart';
import '../widgets/all_members_expenses_widget.dart';
import '../widgets/range_date_widget.dart';
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
            const RangeDateWidget(),
            
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
            const AllMembersExpensesWidget(),
            Text(
              'Spending Breakdown',
              style: AppTextStyles.body20w7.copyWith(
                color: AppColors.blue2,
              ),
            ),
            Container(
              height: 330.h,
              margin: EdgeInsets.only(top: 17.h),
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


