import 'package:flutter/material.dart';
import 'package:wallefy/common/assets.dart';
import 'package:wallefy/fuatures/home/presentation/pages/home.dart';

List<String> menuNames = ['Home', 'Income outcome', 'Statistics', 'Tips'];
List<String> bottomIcons = [
  Assets.icons.home,
  Assets.icons.card,
  Assets.icons.statistics,
  Assets.icons.tips,
];
List<Widget> pages = [
  const HomePage(),
  const Center(
    child: Text('Income outcome'),
  ),
  const Center(
    child: Text('Statistics'),
  ),
  const Center(
    child: Text('Tips'),
  ),
];
