// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:wallefy/common/app_colors.dart';
import 'package:wallefy/common/app_text_style.dart';

class ActionsBottomSheet extends StatelessWidget {
  const ActionsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        BottomSheetContainerWidget(
          color: const Color.fromRGBO(248, 248, 248, 0.82),
          blurSheet: 27,
          function: () {},
          text: Text(
            "All actions",
            style: AppTextStyles.body20w4.copyWith(
              color: AppColors.blue3,
            ),
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(14.r),
            topRight: Radius.circular(14.r),
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        BottomSheetContainerWidget(
          color: const Color.fromRGBO(248, 248, 248, 0.82),
          blurSheet: 27,
          function: () {},
          text: Text(
            "My actions",
            style: AppTextStyles.body20w4.copyWith(
              color: AppColors.blue3,
            ),
          ),
          borderRadius: BorderRadius.zero,
        ),
        SizedBox(
          height: 1.h,
        ),
        BottomSheetContainerWidget(
          blurSheet: 27,
          color: const Color.fromRGBO(248, 248, 248, 0.82),
          function: () {},
          text: Text(
            "Alex actions",
            style: AppTextStyles.body20w4.copyWith(
              color: AppColors.blue3,
            ),
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(14.r),
            bottomRight: Radius.circular(14.r),
          ),
        ),
        SizedBox(
          height: 7.h,
        ),
        BottomSheetContainerWidget(
          blurSheet: 0,
          color: AppColors.white,
          function: () {
            Navigator.pop(context);
          },
          text: Text(
            "Cancel",
            style: AppTextStyles.body20w1.copyWith(
              color: AppColors.blue3,
            ),
          ),
          borderRadius: BorderRadius.circular(14.r),
        ),
        SizedBox(
          height: 11.h,
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class BottomSheetContainerWidget extends StatelessWidget {
  Text text;
  BorderRadius borderRadius;
  Function function;
  Color color;
  double blurSheet;
  BottomSheetContainerWidget({
    Key? key,
    required this.text,
    required this.borderRadius,
    required this.function,
    required this.color,
    required this.blurSheet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 11.w),
      child: InkWell(
        onTap: () => function(),
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: blurSheet, sigmaY: blurSheet),
            child: Container(
              alignment: Alignment.center,
              height: 57.h,
              decoration: BoxDecoration(
                color: color,
                borderRadius: borderRadius,
              ),
              child: text,
            ),
          ),
        ),
      ),
    );
  }
}
