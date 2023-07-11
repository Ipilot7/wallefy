import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallefy/common/app_text_style.dart';
import 'package:wallefy/common/assets.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
    this.widget,
    this.onTap,
    required this.leading,
    this.trailing,
    this.disableDivider = false,
    this.toRight = false,
    this.contentPadding,
  });
  final Widget? widget;
  final Function()? onTap;
  final String leading;
  final String? trailing;
  final bool? toRight;
  final EdgeInsetsGeometry? contentPadding;
  final bool? disableDivider;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: contentPadding ?? EdgeInsets.symmetric(vertical: 10.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                leading,
                style: AppTextStyles.body15w5,
              ),
              InkWell(
                onTap: onTap,
                child: Row(
                  children: [
                    widget ?? const SizedBox(),
                    Text(
                      trailing ?? '',
                      style: AppTextStyles.body15w4,
                    ),
                    toRight != false
                        ? Padding(
                            padding: EdgeInsets.only(left: 7.w),
                            child: SvgPicture.asset(Assets.icons.arrowRight),
                          )
                        : const SizedBox()
                  ],
                ),
              )
            ],
          ),
        ),
        disableDivider == true ? const SizedBox() : const Divider()
      ],
    );
  }
}
