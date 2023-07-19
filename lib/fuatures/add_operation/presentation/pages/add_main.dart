// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:wallefy/common/app_colors.dart';
import 'package:wallefy/common/app_text_style.dart';
import 'package:wallefy/common/assets.dart';
import 'package:wallefy/fuatures/add_operation/presentation/widgets/category_date_currency.dart';

import '../widgets/add_main_expenses_incom.dart';

class AddMainScreen extends StatefulWidget {
  const AddMainScreen({super.key});

  @override
  State<AddMainScreen> createState() => _AddMainScreenState();
}

class _AddMainScreenState extends State<AddMainScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroud,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 45.h,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                padding: EdgeInsets.all(5.w),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Icon(Icons.close, color: AppColors.grey),
              ),
            ),
            Image.asset(
              Assets.images.budget,
              width: 120.w,
              height: 115.w,
            ),
            SizedBox(
              height: 13.h,
            ),
            Text(
              "Add operation ",
              style: AppTextStyles.body20w7.copyWith(
                color: AppColors.blue2,
              ),
            ),
            SizedBox(
              height: 21.h,
            ),
            Container(
              height: 67.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "\$ 0,00",
                    style: AppTextStyles.body21w6.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 11.h,
            ),
            Row(
              children: [
                Expanded(
                  child: AddMainExpensesIncomeWidget(
                    assetsText: Assets.icons.arrowTop,
                    text: "Expenses",
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  child: AddMainExpensesIncomeWidget(
                    assetsText: Assets.icons.arrowDown,
                    text: "Income",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 11.h,
            ),
            const CategoryDateCurrencyWidget(),
            SizedBox(
              height: 11.h,
            ),
            Container(
              alignment: Alignment.topLeft,
              height: 112.h,
              padding: EdgeInsets.symmetric(
                horizontal: 15.w,
              ),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(14.r),
              ),
              child: Expanded(
                child: TextField(
                  textAlign: TextAlign.start,
                  style: AppTextStyles.body15w4.copyWith(
                    color: const Color(0xffBABAD7),
                  ),
                  controller: controller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Note",
                    hintStyle: AppTextStyles.body15w4.copyWith(
                      color: const Color(0xffBABAD7),
                    ),
                    contentPadding: EdgeInsets.zero,
                  ),
                  minLines: 1,
                  maxLines: 10,
                ),
              ),
            ),
            SizedBox(
              height: 31.h,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 60.h,
                width: 374.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: AppColors.unActiveButton,
                ),
                child: Text(
                  "Add",
                  style: AppTextStyles.body15w7.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 13.h,
            ),
          ],
        ),
      ),
    );
  }
}
