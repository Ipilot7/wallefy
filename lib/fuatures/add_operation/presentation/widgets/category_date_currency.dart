// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallefy/common/app_colors.dart';
import 'package:wallefy/common/app_text_style.dart';
import 'package:wallefy/common/assets.dart';
import 'package:wallefy/fuatures/add_operation/presentation/pages/category_pages.dart';
import 'package:wallefy/fuatures/add_operation/presentation/pages/currency_page.dart';
import 'package:wallefy/fuatures/add_operation/presentation/widgets/birthday_dialog_widget.dart';

class CategoryDateCurrencyWidget extends StatefulWidget {
  const CategoryDateCurrencyWidget({super.key});

  @override
  State<CategoryDateCurrencyWidget> createState() => _CategoryDateCurrencyWidgetState();
}

class _CategoryDateCurrencyWidgetState extends State<CategoryDateCurrencyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 24.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(14.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.dropShadowColor,
            offset: const Offset(0, 3),
            blurRadius: 14.r,
          ),
        ],
      ),
      child: Column(
        children: [
          CategoryDateCurrency(
            mainText: "Category",
            elemenetText: "Shopping",
            function: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const CategoryPage();
                  },
                ),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24.h),
            child: Divider(
              height: 1.h,
              color: AppColors.grey,
            ),
          ),
          CategoryDateCurrency(
            mainText: "Date",
            elemenetText: "Thu 2 Sep",
            function: () {
              showModalBottomSheet<void>(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  isScrollControlled: true,
                  backgroundColor: Colors.white,
                  context: context,
                  builder: (BuildContext contexta) {
                    return BirthdayDialog(
                      title: "person.birthday",
                      selected: (date) {
                        setState(() {
                          date;
                        });
                      },
                    );
                  });
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24.h),
            child: Divider(
              height: 1.h,
              color: AppColors.grey,
            ),
          ),
          CategoryDateCurrency(
            mainText: "Currency",
            elemenetText: "US dollars",
            function: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const CurrencyPage();
                },
              ));
            },
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class CategoryDateCurrency extends StatelessWidget {
  String mainText;
  String elemenetText;
  Function function;

  CategoryDateCurrency({
    Key? key,
    required this.mainText,
    required this.elemenetText,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => function(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            mainText,
            style: AppTextStyles.body15w5.copyWith(color: AppColors.black),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                elemenetText,
                style: AppTextStyles.body15w4.copyWith(color: AppColors.grey),
              ),
              SizedBox(
                width: 7.w,
              ),
              SvgPicture.asset(Assets.icons.arrowRight),
            ],
          ),
        ],
      ),
    );
  }
}
