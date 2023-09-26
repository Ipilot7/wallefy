import 'package:flutter/material.dart';

import '../../../../common/constants.dart';
import 'type_slection_button.dart';

class AllMembersConstatntsType extends StatefulWidget {
  const AllMembersConstatntsType({
    super.key,
  });

  @override
  State<AllMembersConstatntsType> createState() =>
      _AllMembersConstatntsTypeState();
}

class _AllMembersConstatntsTypeState extends State<AllMembersConstatntsType> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        3,
        (index) => TypeSelectionButton(
          text: AppConstants.allMembersConstatntsItems[index],
          isActive: index == selectedIndex,
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
