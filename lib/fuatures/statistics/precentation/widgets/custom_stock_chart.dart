import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graphic/graphic.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/locale_data.dart';

class CustomStockChart extends StatelessWidget {
  const CustomStockChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Chart(
      data: stockChartData,
      variables: {
        'genre': Variable(
          accessor: (Map map) => map['genre'] as String,
        ),
        'sold': Variable(
          accessor: (Map map) => map['sold'] as num,
          scale: LinearScale(min: 0),
        ),
      },
      marks: [
        IntervalMark(
          shape: ShapeEncode(
            value: RectShape(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          size: SizeEncode(value: 10.w),
          color: ColorEncode(value: AppColors.blue),
          transition: Transition(
            duration: const Duration(seconds: 1),
          ),
          entrance: {MarkEntrance.y},
          label: LabelEncode(
              encoder: (tuple) => Label("\$${tuple['sold'].toString()}")),
          tag: (tuple) => tuple['genre'].toString(),
        )
      ],
      axes: [
        Defaults.horizontalAxis,
        Defaults.verticalAxis,
      ],
    );
  }
}
