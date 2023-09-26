import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallefy/common/app_colors.dart';
import 'package:wallefy/common/assets.dart';

class EditButton extends StatelessWidget {
  const EditButton({super.key, this.onTap});

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          width: 30.w,
          height: 30.h,
          margin: const EdgeInsets.only(top: 10),
          padding: EdgeInsets.all(4.r),
          decoration: BoxDecoration(
              color: AppColors.black, borderRadius: BorderRadius.circular(8.r)),
          child: SvgPicture.asset(Assets.icons.camera)),
    );
  }
}
