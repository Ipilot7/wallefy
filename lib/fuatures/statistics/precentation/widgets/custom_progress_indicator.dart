import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/app_text_style.dart';


class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({
    super.key,
    required this.color,
    required this.value,
    required this.name,
  });
  final Color color;
  final int value;
  final String name;

  @override
  Widget build(BuildContext context) {
    return CircularSeekBar(
      width: 90.h,
      height: 75.h,
      progress: value.toDouble(),
      barWidth: 5,
      startAngle: 60,
      sweepAngle: 240,
      maxProgress: 100,
      trackColor: color.withOpacity(.21),
      progressColor: color,
      animation: true,
      interactive: false,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              value.toString(),
              style: AppTextStyles.body24w6.copyWith(
                color: color,
              ),
            ),
            Text(
              name,
              style: AppTextStyles.body10w6.copyWith(
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
