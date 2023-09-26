import 'package:flutter/material.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/assets.dart';
import '../models/expenses_incom_model.dart';

class LocalDataSource {
 static List<ExpensesIncomModel> expensesIncomModelList = <ExpensesIncomModel>[
    ExpensesIncomModel(
      imageAssetsText: Assets.icons.arrowTop,
      text: "Expenses",
      color: AppColors.red,
    ),
    ExpensesIncomModel(
      imageAssetsText: Assets.icons.arrowDown,
      text: "Income",
      color: AppColors.green,
    )
  ];
}
