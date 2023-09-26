// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:wallefy/common/app_colors.dart';
import 'package:wallefy/fuatures/add_operation/presentation/widgets/expanses_income_elements_widget.dart';
import 'package:wallefy/fuatures/home/data/data_sources/actions_local_data_source.dart';

class ExpensesPage extends StatefulWidget {
  const ExpensesPage({super.key});

  @override
  State<ExpensesPage> createState() => _ExpensesPageState();
}

class _ExpensesPageState extends State<ExpensesPage> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero.copyWith(top: 20.h, bottom: 11.h),
      child: Container(
        margin: EdgeInsets.only(top: 40.h),
        padding: EdgeInsets.symmetric(
          horizontal: 15.w,
        ).copyWith(bottom: 20.h),
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
              return InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(top: index == 0 ? 0 : 20.h, bottom: 20.h),
                  child: ExpansesIncomeRow(
                    onCheck: selectedIndex == index,
                    assetsText: actionsListMore[index].actionImage,
                    text: actionsListMore[index].actionTitle,
                  ),
                ),
              );
            } else {
              return Container(
                padding: EdgeInsets.only(top: 20.h),
                child: const OtherElementsWidget(),
              );
            }
          },
          separatorBuilder: (context, index) {
            return Divider(
              color: AppColors.grey,
              height: 1.h,
            );
          },
          itemCount: actionsListMore.length + 1,
        ),
      ),
    );
  }
}
