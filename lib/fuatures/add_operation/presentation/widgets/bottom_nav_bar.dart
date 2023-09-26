// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:wallefy/common/app_colors.dart';
import 'package:wallefy/common/app_text_style.dart';

// ignore: must_be_immutable
class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function onTap;
  BottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  List<String> textMenu = [
    "Expenses",
    "Income",
  ];

  @override
  Widget build(BuildContext context) {
    return Positioned(
      // bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 38.h,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(19.r),
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            textMenu.length,
            (index) => menuItem(index),
          ),
        ),
      ),
    );
  }

  Widget menuItem(int index) {
    return Expanded(
      child: InkWell(
        onTap: () => onTap(index),
        radius: 19.r,
        borderRadius: BorderRadius.circular(19.r),
        child: Container(
            height: 38.h,
            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom: 4.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(19.r),
              color: selectedIndex == index ? AppColors.blue : Colors.transparent,
            ),
            child: Text(
              textMenu[index],
              style: AppTextStyles.body13w5.copyWith(
                color: selectedIndex == index ? AppColors.white : AppColors.black,
              ),
            )),
      ),
    );
  }
}
