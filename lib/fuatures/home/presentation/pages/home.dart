import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:wallefy/common/app_colors.dart';
import 'package:wallefy/common/app_text_style.dart';
import 'package:wallefy/common/assets.dart';
import 'package:wallefy/fuatures/home/data/data_sources/actions_local_data_source.dart';
import 'package:wallefy/fuatures/home/presentation/pages/actions.dart';
import 'package:wallefy/fuatures/home/presentation/widgets/daily_limit_widget.dart';
import 'package:wallefy/fuatures/home/presentation/widgets/home_actions_widget.dart';
import 'package:wallefy/fuatures/home/presentation/widgets/home_indicator_percent.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool dailyLimit = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroud,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 45.h,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SvgPicture.asset(
                  Assets.icons.person,
                ),
              ),
              Text(
                "Home",
                style: AppTextStyles.body20w8.copyWith(fontSize: 34.sp, color: AppColors.blue2),
              ),
              SizedBox(
                height: 28.h,
              ),
              DailyLimit(dailyLimit: dailyLimit),
              const HomePercentIndicator(),
              SizedBox(
                height: 23.h,
              ),
              Text(
                "Last actions",
                style: AppTextStyles.body20w7.copyWith(
                  color: AppColors.blue2,
                ),
              ),
              SizedBox(
                height: 21.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(14.r),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.dropShadowColor,
                      offset: const Offset(0, 10),
                      blurRadius: 18.r,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 19.h,
                    ),
                    Text(
                      "Today",
                      style: AppTextStyles.body12w6.copyWith(
                        color: AppColors.grey,
                      ),
                    ),
                    SizedBox(height: 9.h),
                    ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 3,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 26.h,
                        );
                      },
                      itemBuilder: (context, index) {
                        return HomeActionsWidget(
                          assetsIMageText: actionsList[index].actionImage,
                          title: actionsList[index].actionTitle,
                          subtitle: actionsList[index].actionSubtitle,
                          trailing: actionsList[index].actionCash,
                        );
                      },
                    ),
                    SizedBox(
                      height: 34.h,
                    ),
                    Text(
                      "19 May",
                      style: AppTextStyles.body12w6.copyWith(
                        color: AppColors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 9.h,
                    ),
                    HomeActionsWidget(
                      assetsIMageText: actionsList[3].actionImage,
                      title: actionsList[3].actionTitle,
                      subtitle: actionsList[3].actionSubtitle,
                      trailing: actionsList[3].actionCash,
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
                              return const ActionsPage();
                            },
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 60.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.blue,
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        child: Text(
                          "See more",
                          style: AppTextStyles.body15w7.copyWith(color: AppColors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 27.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
