import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:wallefy/common/app_colors.dart';
import 'package:wallefy/common/app_text_style.dart';
import 'package:wallefy/common/assets.dart';
import 'package:wallefy/fuatures/add_operation/presentation/widgets/expanses_income_elements_widget.dart';

class CurrencyPage extends StatefulWidget {
  const CurrencyPage({super.key});

  @override
  State<CurrencyPage> createState() => _CurrencyPageState();
}

class _CurrencyPageState extends State<CurrencyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroud,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Currency",
          style: AppTextStyles.body20w7.copyWith(
            color: AppColors.blue2,
          ),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(
            Assets.icons.arrowBack,
            width: 44.w,
            height: 44.w,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 21.h,
          ),
          CurrencySelectWidget(),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class CurrencySelectWidget extends StatelessWidget {
  CurrencySelectWidget({super.key});

  int onTap = 5;

  List<String> currencyList = [
    "United States Dollar (USD \$)",
    "Pound (RGP £)",
    "Euro (EUR €)",
    "Yen (JPY ¥)",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.w),
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(14.r),
      ),
      child: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: ExpansesIncomeRow(
              assetsText: Assets.images.japan,
              text: currencyList[index],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 25.h),
            child: Divider(
              color: AppColors.grey,
              height: 1.h,
            ),
          );
        },
        itemCount: currencyList.length,
      ),
    );
  }
}
