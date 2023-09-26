// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:wallefy/common/app_colors.dart';
import 'package:wallefy/common/app_text_style.dart';
import 'package:wallefy/common/assets.dart';
import 'package:wallefy/common/constants.dart';
import 'package:wallefy/fuatures/add_operation/presentation/widgets/bottom_nav_bar.dart';
import 'package:wallefy/fuatures/add_operation/presentation/widgets/expenses.dart';
import 'package:wallefy/fuatures/add_operation/presentation/widgets/income.dart';

class CategoryPage extends StatefulWidget {
  int onTap;
  CategoryPage({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  PageController controller = PageController();

  final List<Widget> _pages = const [
    ExpensesPage(),
    IncomePage(),
  ];
  List<bool> indexes = [
    true,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 55.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => pop(context),
                  child: SvgPicture.asset(
                    Assets.icons.arrowBack,
                  ),
                ),
                Text(
                  "Catergory",
                  style: AppTextStyles.body20w7.copyWith(
                    color: AppColors.blue2,
                  ),
                ),
                const SizedBox.shrink(),
              ],
            ),
            SizedBox(
              height: 31.h,
            ),
            Expanded(
              child: SizedBox(
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    PageView(
                      physics: const NeverScrollableScrollPhysics(),
                      reverse: false,
                      controller: controller,
                      children: _pages,
                    ),
                    BottomNavBar(
                      selectedIndex: widget.onTap,
                      onTap: (index) {
                        if (widget.onTap == -1) {
                          setState(() {
                            widget.onTap = index;
                          });
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
