import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/app_text_style.dart';

class PersonIndicators extends StatelessWidget {
  const PersonIndicators({
    super.key,
    required this.name,
    required this.color,
  });
  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 12.h,
          width: 12.h,
          margin: EdgeInsets.only(right: 6.w),
          decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        ),
        Text(
          'You',
          style: AppTextStyles.head12w6.copyWith(
            color: AppColors.blue2,
          ),
        )
      ],
    );
  }
}