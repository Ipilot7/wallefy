import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/app_text_style.dart';

class DrawerMenuWidget extends StatelessWidget {
  const DrawerMenuWidget({
    super.key,
    required this.title,
    required this.icons,
    required this.selected,
  });

  final String title;
  final String icons;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62.h,
      margin: EdgeInsets.only(right: 10.w, left: 10.w),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25.w, right: 5.w),
                child: SvgPicture.asset(
                  icons,
                  color: selected ? AppColors.white : AppColors.unSelDrawText,
                ),
              ),
              Expanded(
                flex: 10,
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: 20.h,
                  child: FittedBox(
                    child: Text(
                      title,
                      style: AppTextStyles.body18w7.copyWith(
                        color: selected
                            ? AppColors.white
                            : AppColors.unSelDrawText,
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Container(
                  height: 60  .h,
                  width: 20.w,
                  color: selected ? AppColors.accentBlue : AppColors.blue)
            ],
          ),
          Divider(
            color: AppColors.accentBlue,
            height: 1.h,
          )
        ],
      ),
    );
  }
}
