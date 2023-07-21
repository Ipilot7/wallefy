// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:wallefy/common/app_colors.dart';
import 'package:wallefy/common/app_text_style.dart';
import 'package:wallefy/common/assets.dart';
import 'package:wallefy/common/constants.dart';
import 'package:wallefy/fuatures/add_operation/data/data_sources/expenses_income_models_list.dart';
import 'package:wallefy/fuatures/add_operation/presentation/pages/add_done.dart';
import 'package:wallefy/fuatures/add_operation/presentation/widgets/add_main_expenses_incom.dart';
import 'package:wallefy/fuatures/add_operation/presentation/widgets/category_date_currency.dart';

class AddMainScreen extends StatefulWidget {
  const AddMainScreen({super.key});

  @override
  State<AddMainScreen> createState() => _AddMainScreenState();
}

class _AddMainScreenState extends State<AddMainScreen> {
  TextEditingController controller = TextEditingController();
  late String category;
  late String date;
  late String currency;

  int onTap = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroud,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(5.w),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(Icons.close, color: AppColors.grey),
                  ),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  LocalDataSource.expensesIncomModelList.length,
                  (index) => InkWell(
                    onTap: () {
                      setState(() {
                        onTap = index;
                      });
                    },
                    child: AddMainExpensesIncomeWidget(
                      assetsText: LocalDataSource.expensesIncomModelList[index].imageAssetsText,
                      text: LocalDataSource.expensesIncomModelList[index].text,
                      fillColor: colorFunc(index, onTap),
                    ),
                  ),
                  // LocalDataSource.expensesIncomModelList[index]
                ),
              ),
              SizedBox(
                height: 11.h,
              ),
              CategoryDateCurrencyWidget(
                onTap: onTap,
              ),
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const AddDone();
                      },
                    ),
                  );
                },
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
      ),
    );
  }

  Color colorFunc(int index, int onTap) {
    if (onTap == index) {
      if (index == 0) {
        return AppColors.red;
      } else {
        return AppColors.green;
      }
    }
    return Colors.transparent;
  }
}
