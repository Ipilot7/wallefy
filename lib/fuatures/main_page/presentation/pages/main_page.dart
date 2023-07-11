import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallefy/common/app_colors.dart';
import 'package:wallefy/common/locale_data.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State createState() => _MainPageDemoState();
}

class _MainPageDemoState extends State<MainPage> {
  int selectedIndex = 0;
  PageController controller = PageController(initialPage: 2);

  nextPage(int index) {
    selectedIndex = index;
    controller.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.backgroud,
        floatingActionButton: FloatingActionButton(
          tooltip: 'Add Income Outcome',
          onPressed: () {
            showModalBottomSheet(
              backgroundColor: AppColors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r)),
              context: context,
              builder: (_) => Container(
                height: MediaQuery.of(context).size.height,
              ),
            );
          },
          backgroundColor: AppColors.blue,
          child: const Icon(Icons.add),
        ),
        body: SafeArea(
          child: PageView(
            physics: const BouncingScrollPhysics(),
            controller: controller,
            children: pages,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: AppColors.unActiveButton,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              pages.length,
              (index) => IconButton(
                color:
                    selectedIndex == index ? AppColors.blue2 : AppColors.grey,
                tooltip: menuNames[index],
                icon: bottomIcons[index],
                onPressed: () {
                  nextPage(index);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
