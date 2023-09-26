import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallefy/common/app_colors.dart';
import 'package:wallefy/common/app_text_style.dart';
import 'package:wallefy/common/assets.dart';

class AddDone extends StatelessWidget {
  const AddDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Assets.images.wellDone,
              width: 120.w,
              height: 115.w,
              fit: BoxFit.scaleDown,
            ),
            SizedBox(
              height: 29.h,
            ),
            Text(
              "Well done!",
              style: AppTextStyles.body15w7.copyWith(color: AppColors.blue2),
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              "Your operation has been added",
              style: AppTextStyles.body15w4.copyWith(color: AppColors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
