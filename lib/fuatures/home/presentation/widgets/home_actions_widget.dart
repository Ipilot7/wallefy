// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:wallefy/common/app_colors.dart';
import 'package:wallefy/common/app_text_style.dart';
import 'package:wallefy/common/assets.dart';

// ignore: must_be_immutable
class HomeActionsWidget extends StatelessWidget {
  String assetsIMageText;
  String title;
  String subtitle;
  String trailing;
  HomeActionsWidget({
    Key? key,
    required this.assetsIMageText,
    required this.title,
    required this.subtitle,
    required this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 54.w,
              height: 54.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.backgroud,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Image.asset(
                assetsIMageText,
                width: 30.w,
                height: 30.w,
              ),
            ),
            SizedBox(
              width: 11.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.body15w6.copyWith(
                    color: AppColors.blue2,
                  ),
                ),
                Text(
                  subtitle,
                  style: AppTextStyles.body15w4.copyWith(
                    color: AppColors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
        Text(
          trailing,
          style: AppTextStyles.body15w6.copyWith(
            color: AppColors.red,
          ),
        ),
      ],
    );
  }
}
