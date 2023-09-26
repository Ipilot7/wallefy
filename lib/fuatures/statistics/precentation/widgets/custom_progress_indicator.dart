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
  final double value;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircularSeekBar(
          width: 90.h,
          height: 75.h,
          progress: value.toDouble(),
          barWidth: 5,
          startAngle: 45,
          sweepAngle: 270,
          maxProgress: 100,
          trackColor: color.withOpacity(.21),
          progressColor: color,
          animation: true,
          interactive: false,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              name,
              style: AppTextStyles.body24w4.copyWith(
                color: color,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
