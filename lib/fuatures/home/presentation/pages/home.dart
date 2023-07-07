// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import '../../../../common/app_text_style.dart';
// import '../../../../common/constants.dart';
// import '../../../login/presentation/widgets/custombutton.dart';
// import '../widgets/drawer_menu_widget.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key, this.pageIndex = 0});

//   final int pageIndex;

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int selected = 0;
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   void initState() {
//     super.initState();
//     selected = widget.pageIndex;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       backgroundColor: AppColors.white,
//       appBar: AppBar(
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(Icons.menu, color: AppColors.black, size: 36.w),
//           onPressed: () {
//             _scaffoldKey.currentState?.openDrawer();
//           },
//         ),
//         backgroundColor: AppColors.white,
//         title: AutoSizeText(AppConstants.menuName[selected],
//             maxLines: 1, minFontSize: 16, style: AppTextStyles.body16w7),
//       ),
//       drawer: Drawer(
//         backgroundColor: AppColors.blue,
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 height: 150.h,
//                 color: AppColors.grey,
//                 child: SafeArea(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Image.asset(Assets.icons.logo, width: 78.w, height: 78.h),
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text('CRUD',
//                               style: AppTextStyles.head25w5
//                                   .copyWith(fontWeight: FontWeight.w900)),
//                           Text('GROUP',
//                               style: AppTextStyles.head21w5.copyWith(
//                                   fontWeight: FontWeight.w200,
//                                   fontSize: 20.sp)),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(height: 50.h),
//               Column(
//                 children: List.generate(
//                   AppConstants.menuName.length,
//                   (index) => InkWell(
//                     overlayColor:
//                         const MaterialStatePropertyAll(Colors.transparent),
//                     onTap: () {
//                       selected = index;
//                       pop(context);
//                       setState(() {});
//                     },
//                     child: DrawerMenuWidget(
//                       icons: AppConstants.menuIcons[index],
//                       selected: selected == index,
//                       title: AppConstants.menuName[index],
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 40.h),
//               Padding(
//                 padding: EdgeInsets.only(left: 25.w, right: 5.w),
//                 child: Row(children: [
//                   SvgPicture.asset(
//                     Assets.icons.settingAltLine,
//                     color: AppColors.white,
//                   ),
//                   SizedBox(width: 8.w),
//                   Text(
//                     'Sozlamalar',
//                     style:
//                         AppTextStyles.body16w6.copyWith(color: AppColors.white),
//                   ),
//                 ]),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(left: 25.w, top: 12.h),
//                 child: CustomTextButton(
//                   text: 'Chiqish',
//                   onTap: () {
//                     Navigator.pushAndRemoveUntil(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => LoginPage.screen(),
//                       ),
//                       (route) => false,
//                     );
//                   },
//                 ),
//               ),
//               SizedBox(height: 40.h)
//             ],
//           ),
//         ),
//       ),
//       body: AppConstants.pages[selected],
//     );
//   }
// }
