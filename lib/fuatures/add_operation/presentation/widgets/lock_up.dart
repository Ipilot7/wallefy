import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallefy/common/app_colors.dart';

import '../../../../common/assets.dart';

class LockUpWidget extends StatelessWidget {
  const LockUpWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(flex: 1),
        Container(
          height: 4.h,
          width: 48.w,
          decoration: BoxDecoration(
            color: AppColors.black,
            borderRadius: BorderRadius.circular(50.r),
          ),
        ),
        SizedBox(width: 129.w),
        InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: SvgPicture.asset(Assets.icons.arrowBack),
        ),
      ],
    );
  }
}
