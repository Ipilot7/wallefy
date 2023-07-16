import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallefy/common/app_colors.dart';
import 'package:wallefy/common/app_text_style.dart';
import 'package:wallefy/common/assets.dart';
import 'package:wallefy/fuatures/home/data/data_sources/actions_local_data_source.dart';
import 'package:wallefy/fuatures/home/presentation/widgets/bottom_sheet_widget.dart';
import 'package:wallefy/fuatures/home/presentation/widgets/home_actions_widget.dart';

class ActionsPage extends StatefulWidget {
  const ActionsPage({super.key});

  @override
  State<ActionsPage> createState() => _ActionsPageState();
}

class _ActionsPageState extends State<ActionsPage> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              expandedHeight: 60.h,
              floating: true,
              pinned: false,
              elevation: 0,
              backgroundColor: AppColors.backgroud,
              leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(
                  Assets.icons.arrowBack,
                  height: 19.w,
                  width: 19.w,
                  fit: BoxFit.scaleDown,
                  // ignore: deprecated_member_use
                  color: const Color(0xff472FC8),
                ),
              ),
              title: Text(
                "ActionsPage",
                style: AppTextStyles.body20w7.copyWith(color: AppColors.blue2),
              ),
              centerTitle: true,
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 21.w),
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) {
                          return SizedBox(
                            height: MediaQuery.of(context).size.height,
                            child: const ActionsBottomSheet(),
                          );
                        },
                      );
                    },
                    child: SizedBox(
                      height: 26.w,
                      width: 26.w,
                      child: Transform.rotate(
                        angle: pi * 2,
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          Assets.icons.filter,
                          theme: SvgTheme(
                            currentColor: AppColors.blue2,
                            fontSize: 26.w,
                          ),
                          color: const Color(0xff472FC8),
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 34.h,
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: _SliverAppBarDelegate(
                widget: Container(
                  height: 55.h,
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: TextField(
                    controller: _controller,
                    cursorHeight: 25.h,
                    style: AppTextStyles.body18w4.copyWith(
                      color: const Color(0xff94A1C5),
                    ),
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Search",
                      hintStyle: AppTextStyles.body18w4.copyWith(
                        color: const Color(0xff94A1C5),
                      ),
                      prefixIcon: SvgPicture.asset(
                        Assets.icons.search,
                        width: 23.h,
                        height: 23.h,
                        fit: BoxFit.scaleDown,
                        color: const Color(0xff0D0E56),
                      ),
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 15.h,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                margin: EdgeInsets.symmetric(horizontal: 20.w),
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
                          assetsIMageText: actionsListMore[index].actionImage,
                          title: actionsListMore[index].actionTitle,
                          subtitle: actionsListMore[index].actionSubtitle,
                          trailing: actionsListMore[index].actionCash,
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
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => HomeActionsWidget(
                        assetsIMageText: actionsListMore[2 + index].actionImage,
                        title: actionsListMore[2 + index].actionTitle,
                        subtitle: actionsListMore[2 + index].actionSubtitle,
                        trailing: actionsListMore[2 + index].actionCash,
                      ),
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 26.h);
                      },
                      itemCount: 5,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 31.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  Widget widget;
  _SliverAppBarDelegate({
    required this.widget,
  });

  @override
  double get minExtent => 55.h;

  @override
  double get maxExtent => 55.h;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: widget,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
