import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../../common/all_constants.dart';

class RangeDateWidget extends StatefulWidget {
  const RangeDateWidget({
    super.key,
  });

  @override
  State<RangeDateWidget> createState() => _RangeDateWidgetState();
}

class _RangeDateWidgetState extends State<RangeDateWidget> {
  double height1 = 460.h;
  double height2 = 70.h;
  bool isOpen = false;
  final DateRangePickerController dateRangePickerController =
      DateRangePickerController();

  DateTime startDate = DateTime.now().subtract(const Duration(days: 2));
  DateTime endDate = DateTime.now();
  @override
  void initState() {
    super.initState();
    dateRangePickerController.addPropertyChangedListener((p0) {
      startDate =
          dateRangePickerController.selectedRange!.startDate ?? startDate;
      endDate = dateRangePickerController.selectedRange!.endDate ?? endDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: isOpen ? height1 : height2,
      duration: const Duration(milliseconds: 500),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(
            height: 60.h,
            margin: EdgeInsets.only(bottom: 14.h),
            padding: EdgeInsets.only(left: 23.w),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    text: DateFormat("E d, ").format(startDate),
                    style:
                        AppTextStyles.body13w6.copyWith(color: AppColors.blue2),
                    children: [
                      TextSpan(
                        text: DateFormat("MMM yyyy - ").format(startDate),
                        style: AppTextStyles.body13w4.copyWith(
                          color: AppColors.black.withOpacity(.5),
                        ),
                      ),
                      TextSpan(
                        text: DateFormat("E d, ").format(endDate),
                        style: AppTextStyles.body13w6
                            .copyWith(color: AppColors.blue2),
                      ),
                      TextSpan(
                        text: DateFormat("MMM yyyy").format(endDate),
                        style: AppTextStyles.body13w4.copyWith(
                          color: AppColors.black.withOpacity(.5),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isOpen = true;
                    });
                  },
                  child: Container(
                    height: 45.h,
                    alignment: Alignment.center,
                    padding:
                        EdgeInsets.symmetric(horizontal: 18.h, vertical: 8.h),
                    decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(color: AppColors.grey2),
                      ),
                    ),
                    child: SvgPicture.asset(Assets.icons.calendar),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 23.h),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: SfDateRangePicker(
              onSubmit: (p0) {
                setState(() {
                  isOpen = false;
                });
              },
              controller: dateRangePickerController,
              showActionButtons: true,
              backgroundColor: AppColors.white,
              startRangeSelectionColor: AppColors.blue,
              endRangeSelectionColor: AppColors.blue,
              selectionColor: AppColors.calendarRangeColor,
              headerStyle: const DateRangePickerHeaderStyle(),
              selectionMode: DateRangePickerSelectionMode.range,
              initialSelectedRange: PickerDateRange(
                startDate,
                endDate,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
