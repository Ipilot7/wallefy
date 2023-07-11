import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallefy/common/app_colors.dart';
import 'package:wallefy/common/assets.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
    required this.onTap,
  });
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          width: 50.w,
          height: 50.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10.r)),
          child: SvgPicture.asset(Assets.icons.arrowBack)),
    );
  }
}
