import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallefy/common/app_colors.dart';
import 'package:wallefy/fuatures/add_operation/presentation/pages/add_done.dart';
import 'package:wallefy/fuatures/add_operation/presentation/pages/add_main.dart';
import 'di/di.dart' as sl;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await sl.init();
  // isBoxOpen(HiveKey.tokenModel);

  // HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final hive = Hive.box(HiveKey.tokenModel);
    // final data = hive.get(HiveKey.tokenModel);
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      builder: (context, child) => MaterialApp(
          themeMode: ThemeMode.system,
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.backgroud,
            scrollbarTheme: ScrollbarThemeData(
              thickness: MaterialStateProperty.all(5.w),
              radius: Radius.circular(3.r),
              crossAxisMargin: 12,
              thumbColor: MaterialStateProperty.all(AppColors.blue),
              thumbVisibility: MaterialStateProperty.all(true),
              trackColor: MaterialStateProperty.all(AppColors.blue),
            ),
          ),
          home: const AddMainScreen()
          //  data != null ? const HomePage() : LoginPage.screen(),
          ),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}
