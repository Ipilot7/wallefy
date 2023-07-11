import 'package:flutter/material.dart';
import 'package:wallefy/common/assets.dart';
import 'package:wallefy/fuatures/home/presentation/pages/home.dart';
import 'package:wallefy/fuatures/profile/presentation/pages/profile.dart';

List<String> menuNames = ['Home', 'Statistics', 'Tips', 'Profile'];
List<String> bottomIcons = [
  Assets.icons.home,
  Assets.icons.statistics,
  Assets.icons.tips,
  Assets.icons.userIcon,
];
List<Widget> pages = [
  const HomePage(),
  const Center(
    child: Text('Statistics'),
  ),
  const Center(
    child: Text('Tips'),
  ),
  ProfilePage()
];
