import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AppConstants {
  static const countryBox = 'country_box';

  static List<String> menuIcons = [
    // Assets.icons.basket,
    // Assets.icons.pieChart,
    // Assets.icons.group,
    // Assets.icons.userBox,
    // Assets.icons.wallet,
    // Assets.icons.refundBack,
    // Assets.icons.shop,
    // Assets.icons.widgetAdd,
    // Assets.icons.paper,
  ];
  static List<String> menuName = [
    'Kassa',
    'Hisobotlar',
    'Hodimlar',
    'Mijozlar',
    'Nasiyalar',
    'Mahsulot qaytarish',
    'Mahsulotlar',
    'Mahsulotlar qoldig`i',
    'Chiqim',
  ];
  static List<Widget> pages = [
    // CashPage.screen(),
    // Hisobotlar.screen(),
    // EmployeesPage.screen(),
    // CustomersPage.screen(),
    // const Nasiya(),
    // const MaysulotQaytarish(),
    // ProductsPage.screen(),
    // RemainderProductsPage.screen(),
    // const Chiqim()
  ];

  static var mask = MaskTextInputFormatter(
      mask: '(##) ### ## ##', filter: {"#": RegExp(r'[0-9]')});
}

pushTo(Widget page, BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (_) => page));
}

pop(BuildContext context) {
  if (Navigator.canPop(context)) {
    Navigator.pop(context);
  }
}
