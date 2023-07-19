import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallefy/common/app_colors.dart';
import 'package:wallefy/fuatures/add_operation/presentation/widgets/expanses_income_elements_widget.dart';
import 'package:wallefy/fuatures/home/data/data_sources/actions_local_data_source.dart';

class IncomePage extends StatelessWidget {
  const IncomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero.copyWith(top: 20.h, bottom: 11.h),
      child: Container(
        margin: EdgeInsets.only(top: 40.h),
        padding: EdgeInsets.symmetric(
          horizontal: 15.w,
          vertical: 22.h,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.dropShadowColor,
              blurRadius: 18.r,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            if (index < actionsListMore.length) {
              return ExpansesIncomeRow(
                assetsText: actionsListMore[index].actionImage,
                text: actionsListMore[index].actionTitle,
              );
            } else {
              return const OtherElementsWidget();
            }
          },
          separatorBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Divider(
                color: AppColors.grey,
                height: 1.h,
              ),
            );
          },
          itemCount: actionsListMore.length + 1,
        ),
      ),
    );
  }
}
