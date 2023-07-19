// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:wallefy/common/app_colors.dart';
// import 'package:wallefy/common/app_text_style.dart';

// /// Oy va kun hisobi 1 dan boshlanadi va oyning maksimal qiymati 12
// /// Sanaga tanlashda chegara maksimal va minimal chegaralarni o'rnatishingiz mumkin.
// /// Agar maksimal yilning qiymati null bo'lsa maksimal oyning va maksimal kunning qiymati ishlamaydi.
// /// Agar maksimal oyning qiymati null bo'lsa maksimal kunning qiymati ishlamaydi.
// /// Agar minimal yilning qiymati null bo'lsa minimal oyning va minimal kunning qiymati ishlamaydi.
// /// Agar minimal oyning qiymati null bo'lsa minimal kunning qiymati ishlamaydi.

// class BirthdayDialog extends StatefulWidget {
//   final String title;
//   final int? maxYear, minYear, maxMonth, minMonth, minDay, maxDay;
//   final Function(String date) selected;

//   const BirthdayDialog({
//     Key? key,
//     required this.selected,
//     required this.title,
//     this.maxYear,
//     this.minYear,
//     this.maxMonth,
//     this.minMonth,
//     this.minDay,
//     this.maxDay,
//   })  : assert(maxYear == null || minYear == null || maxYear > minYear),
//         assert(maxMonth == null || minMonth == null || maxMonth > minMonth),
//         assert(maxDay == null || minDay == null || maxDay > minDay),
//         super(key: key);

//   @override
//   _BirthdayDialogState createState() => _BirthdayDialogState();
// }

// class _BirthdayDialogState extends State<BirthdayDialog> {
//   DateTime date = DateTime.now();
//   int currentMonth = 0;
//   int year = 0;
//   int mouth = 0;
//   int day = 0;
//   List<int> yearData = [];
//   List<String> monthData = months;
//   List<int> days = [];

//   @override
//   void initState() {
//     setDateTimeLimit();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(18.r),
//           topRight: Radius.circular(18.r),
//         ),
//         color: AppColors.white,
//       ),
//       child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             const LockUpWidget(),
//             SizedBox(height: 12.h),
//             Text(
//               widget.title,
//               style: AppTextStyles.body18w5,
//             ),
//             SizedBox(height: 20.h),
//             Stack(alignment: Alignment.center, children: [
//               Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//                 PickerWidget(
//                   itemWidth: 90.w,
//                   itemHeight: 40.h,
//                   currentIndex: date.day,
//                   itemCount: days.length,
//                   builder: (context, index, isSelected) {
//                     return Text(
//                       days[index].toString(),
//                       style: AppTextStyles.textStyle.copyWith(
//                         fontSize: isSelected ? 20.sp : 16.sp,
//                         color: isSelected ? AppColors.black : AppColors.gray5,
//                         fontWeight:
//                             isSelected ? FontWeight.w600 : FontWeight.w400,
//                       ),
//                     );
//                   },
//                   onChange: (index) {
//                     setState(
//                       () {
//                         day = days[index];
//                         date = DateTime(date.year, date.month, days[index]);
//                       },
//                     );
//                   },
//                 ),
//                 PickerWidget(
//                     itemWidth: 110.w,
//                     itemHeight: 40.h,
//                     itemCount: months.length,
//                     currentIndex: currentMonth,
//                     builder: (context, index, isSelected) {
//                       return Text(
//                         months[index],
//                         style: AppTextStyles.textStyle.copyWith(
//                           fontSize: isSelected ? 20.sp : 16.sp,
//                           color: isSelected ? AppColors.black : AppColors.gray5,
//                           fontWeight:
//                               isSelected ? FontWeight.w600 : FontWeight.w400,
//                         ),
//                       );
//                     },
//                     onChange: (index) {
//                       date = DateTime(date.year, index + 1, date.day);
//                       mouth = index + 1;
//                       if (widget.minYear != null && widget.minMonth != null) {
//                         mouth += widget.minMonth!;
//                       }
//                       final lastDay =
//                           DateTime(date.year, date.month + 1, 0).day;
//                       days = [for (var i = 1; i <= lastDay; i++) i];
//                       setState(() {});
//                     }),
//                 SizedBox(width: 10.w),
//                 PickerWidget(
//                   itemWidth: 100.w,
//                   itemHeight: 40.h,
//                   itemCount: yearData.length,
//                   currentIndex: yearData.length - 2,
//                   builder: (context, index, isSelected) {
//                     return Text(
//                       '${yearData[index]}',
//                       style: AppTextStyles.textStyle.copyWith(
//                         fontSize: isSelected ? 20.sp : 16.sp,
//                         color: isSelected ? AppColors.black : AppColors.gray5,
//                         fontWeight:
//                             isSelected ? FontWeight.w600 : FontWeight.w400,
//                       ),
//                     );
//                   },
//                   onChange: (index) {
//                     setState(() {
//                       date =
//                           DateTime(yearData[index], date.month + 1, date.day);
//                       year = yearData[index];
//                       if (index == yearData.length - 1) {
//                         setDateTimeLimit();
//                       } else {
//                         monthData = months;
//                         final lastDay =
//                             DateTime(date.year, date.month + 1, 0).day;
//                         days = [for (var i = 1; i <= lastDay; i++) i];
//                       }
//                     });
//                   },
//                 ),
//               ]),
//               Column(
//                   mainAxisSize: MainAxisSize.min,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       height: 1.h,
//                       width: 300.w,
//                       color: AppColors.gray5.withOpacity(0.5),
//                     ),
//                     SizedBox(height: 40.h),
//                     Container(
//                       height: 1.h,
//                       width: 300.w,
//                       color: AppColors.gray5.withOpacity(0.5),
//                     ),
//                   ]),
//             ]),
//             SizedBox(height: 20.h),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 12.w),
//               child: GestureDetector(
//                 onTap: () {
//                   widget.selected('$year-$mouth-$day');
//                   print('$day.$mouth.$year');
//                   Navigator.pop(context);
//                 },
//                 child: Container(
//                   height: 40.h,
//                   alignment: Alignment.center,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10.r),
//                     gradient: AppColors.primaryGradient,
//                   ),
//                   child: Text(
//                     translate('login.continue'),
//                     style: AppTextStyles.textStyle.copyWith(
//                         fontWeight: FontWeight.w500,
//                         fontSize: 16,
//                         color: AppColors.white),
//                   ),
//                 ),
//               ),
//             ),
//           ]),
//     );
//   }

//   void setDateTimeLimit() {
//     int maxYear = date.year,
//         maxMonth = 12,
//         maxDay = 31,
//         minYear = date.year - 120,
//         minMonth = 1,
//         minDay = 1;
//     if (widget.minYear != null) {
//       minYear = widget.minYear! - 120;
//       if (widget.minMonth != null) {
//         if (widget.minMonth! > 0) {
//           minMonth = widget.minMonth!;
//           if (widget.minDay != null) {
//             if (widget.minDay! > 0) {
//               minDay = widget.minDay!;
//             }
//           }
//         }
//       }
//       if (date.year <= minYear) {
//         // ushbu soha real holatda ishlamaydi.
//         // ammo vaqti noto'g'ri qurimalar uchun ehtiyot shart yozilmoqda
//         int settedMonth = date.month + 1, settedDay = date.day;
//         if (date.year == minYear && date.month <= minMonth) {
//           settedMonth = minMonth;
//           if (date.month == minMonth && date.day < minDay) {
//             settedDay = minDay;
//           }
//         }
//         date = DateTime(minYear, settedMonth, settedDay);
//       }
//     }
//     if (widget.maxYear != null) {
//       maxYear = widget.maxYear!;
//       if (widget.maxMonth != null) {
//         if (widget.maxMonth! <= 12) {
//           maxMonth = widget.maxMonth!;
//           if (widget.maxDay != null) {
//             if (widget.maxDay! <= 31) {
//               maxDay = widget.maxDay!;
//             }
//           }
//         }
//       }
//       if (date.year >= maxYear) {
//         int settedMonth = date.month + 1, settedDay = date.day;
//         if (date.year == maxYear && date.month >= maxMonth) {
//           settedMonth = maxMonth;
//           if (date.month == maxMonth && date.day > maxDay) {
//             settedDay = maxDay;
//           }
//         }
//         date = DateTime(maxYear, settedMonth, settedDay);
//       }
//     }
//     yearData = [for (var i = minYear; i <= maxYear; i++) i];
//     monthData = [for (var i = minMonth; i <= maxMonth; i++) months[i - 1]];
//     final lastDay = DateTime(date.year, date.month + 1, 0).day;
//     if (lastDay < maxDay) {
//       maxDay = lastDay;
//     }
//     days = [for (var i = minDay; i <= maxDay; i++) i];
//     setState(
//       () {
//         if (date.month > 1) {
//           currentMonth = date.month;
//         }
//       },
//     );
//   }
// }

// class PickerWidget extends StatefulWidget {
//   final double itemWidth;
//   final double itemHeight;
//   int itemCount;
//   final int currentIndex;
//   Function(int index)? onChange;
//   Widget Function(BuildContext context, int index, bool isSelected) builder;

//   PickerWidget({
//     Key? key,
//     required this.itemWidth,
//     required this.itemHeight,
//     required this.itemCount,
//     required this.builder,
//     this.onChange,
//     this.currentIndex = 0,
//   })  : assert(itemWidth > 0),
//         assert(itemHeight > 0),
//         assert(itemCount > 0),
//         super(key: key);

//   @override
//   State<PickerWidget> createState() => _PickerWidgetState();
// }

// class _PickerWidgetState extends State<PickerWidget> {
//   int _currentValue = 0;
//   int _lastValue = 0;
//   late ScrollController _scrollController;

//   bool get isScrolling => _scrollController.position.isScrollingNotifier.value;

//   @override
//   void initState() {
//     _scrollController = ScrollController(initialScrollOffset: 0);
//     _scrollController.addListener(_scrollListener);
//     setState(() {
//       _currentValue = widget.currentIndex;
//       if (_currentValue > 0) {
//         _currentValue--;
//         setCurrent();
//       }
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: widget.itemWidth,
//       height: widget.itemHeight * 3,
//       color: AppColors.white,
//       child: ListView.builder(
//         itemCount: widget.itemCount + 2,
//         scrollDirection: Axis.vertical,
//         controller: _scrollController,
//         itemBuilder: (BuildContext context, int index) {
//           return Container(
//             width: widget.itemWidth,
//             height: widget.itemHeight,
//             alignment: Alignment.center,
//             child: index == 0 || widget.itemCount + 1 == index
//                 ? const SizedBox()
//                 : widget.builder(
//                     context, index - 1, _currentValue + 1 == index),
//           );
//         },
//         padding: EdgeInsets.zero,
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _scrollController.dispose();
//     super.dispose();
//   }

//   void _scrollListener() {
//     setState(() {
//       if (widget.itemHeight == 0) {
//         _currentValue = 0;
//       } else {
//         int value = _scrollController.offset ~/ widget.itemHeight;
//         if (_scrollController.offset - value * widget.itemHeight >
//             widget.itemHeight / 2) {
//           value++;
//         }
//         _currentValue = value;
//       }
//     });
//     if (_currentValue < widget.itemCount &&
//         _lastValue != _currentValue &&
//         widget.onChange != null &&
//         _currentValue >= 0) {
//       widget.onChange!(_currentValue);
//       _lastValue = _currentValue;
//     }
//     Future.delayed(
//       const Duration(milliseconds: 200),
//       () => _setCenterScroll(),
//     );
//   }

//   void _setCenterScroll() {
//     if (_scrollController.hasClients && !isScrolling) {
//       double animHeight = widget.itemHeight * _currentValue;
//       if (_scrollController.offset > animHeight) {
//         animHeight = _scrollController.offset - animHeight;
//       } else {
//         animHeight = animHeight - _scrollController.offset;
//       }
//       if (animHeight > 0.000001 || _currentValue == 0) {
//         _scrollController.animateTo(
//           widget.itemHeight * _currentValue,
//           duration: const Duration(milliseconds: 300),
//           curve: Curves.easeOutCubic,
//         );
//       }
//     }
//   }

//   void setCurrent() async {
//     await Future.delayed(const Duration(milliseconds: 200));
//     _scrollController.animateTo(
//       _currentValue * widget.itemHeight,
//       duration: const Duration(milliseconds: 300),
//       curve: Curves.easeOutCubic,
//     );
//   }
// }
