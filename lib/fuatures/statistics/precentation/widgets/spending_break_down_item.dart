import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallefy/fuatures/statistics/data/spending_breakdown_model.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/app_text_style.dart';
import 'custom_progress_indicator.dart';

class SpendingBreakDownItem extends StatelessWidget {
  const SpendingBreakDownItem({
    super.key, required this.spendingBreakDownModel,
    
  });
  
  final SpendingBreakDownModel spendingBreakDownModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145.h,
      width: 115.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomProgressIndicator(
              color: AppColors.blue, value: spendingBreakDownModel.percentage, name: spendingBreakDownModel.image),
          Text(
            spendingBreakDownModel.title,
            style: AppTextStyles.body12w6.copyWith(
              color: AppColors.grey,
            ),
          ),
          Text(
            '\$${spendingBreakDownModel.amount}',
            style: AppTextStyles.body15w6.copyWith(
              color: AppColors.blue2,
            ),
          ),
        ],
      ),
    );
  }
}
