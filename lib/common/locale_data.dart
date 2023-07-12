import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wallefy/common/assets.dart';
import 'package:wallefy/fuatures/home/presentation/pages/home.dart';
import 'package:wallefy/fuatures/profile/presentation/pages/profile.dart';
import 'package:wallefy/fuatures/statistics/data/spending_breakdown_model.dart';
import 'package:wallefy/fuatures/statistics/precentation/pages/statistics_page.dart';

import '../fuatures/statistics/precentation/widgets/custom_line_chart.dart';

List<String> menuNames = ['Home', 'Statistics', 'Tips', 'Profile'];
List<String> bottomIcons = [
  Assets.icons.home,
  Assets.icons.statistics,
  Assets.icons.tips,
  Assets.icons.userIcon,
];
List<Widget> pages = [
  const HomePage(),
  StatisticsPage(),
  const Center(
    child: Text('Tips'),
  ),
  ProfilePage()
];
final rdm = Random();
final List<Map> stockChartData = [
    {'genre': 'Mo', 'sold': rdm.nextInt(6000)},
    {'genre': 'Tu', 'sold': rdm.nextInt(6000)},
    {'genre': 'We', 'sold': rdm.nextInt(6000)},
    {'genre': 'Th', 'sold': rdm.nextInt(6000)},
    {'genre': 'Fr', 'sold': rdm.nextInt(6000)},
    {'genre': 'Sa', 'sold': rdm.nextInt(6000)},
    {'genre': 'Su', 'sold': rdm.nextInt(6000)},
  ];
List<Coordinate> listCoordinate = [
  Coordinate(0, 55),
  Coordinate(4, 46),
  Coordinate(11, 45),
  Coordinate(13, 33),
  Coordinate(17, 28),
  Coordinate(24, 44),
  Coordinate(29, 40),
  Coordinate(33, 43),
  Coordinate(38, 38),
  Coordinate(41, 47),
  Coordinate(45, 48),
  Coordinate(48, 67),
  Coordinate(52, 71),
  Coordinate(58, 30),
  Coordinate(61, 36),
  Coordinate(64, 31),
  Coordinate(67, 68),
  Coordinate(70, 68),
  Coordinate(72, 45),
  Coordinate(75, 49),
  Coordinate(77, 40),
  Coordinate(80, 45),
  Coordinate(81, 21),
  Coordinate(84, 40),
  Coordinate(87, 40),
];

List<SpendingBreakDownModel> spendingBreakDownList = [
  SpendingBreakDownModel(
    title: 'Travel',
    amount: 245,
    image: '🚘',
    percentage: 40,
  ),
  SpendingBreakDownModel(
    title: 'Travel',
    amount: 245,
    image: '🍕',
    percentage: 20,
  ),
  SpendingBreakDownModel(
    title: 'Travel',
    amount: 245,
    image: '🏓',
    percentage: 10,
  ),
  SpendingBreakDownModel(
    title: 'Travel',
    amount: 245,
    image: '👚',
    percentage: 0,
  ),
  SpendingBreakDownModel(
    title: 'Travel',
    amount: 245,
    image: '💵',
    percentage: 0,
  ),
  SpendingBreakDownModel(
    title: 'Travel',
    amount: 245,
    image: '📚',
    percentage: 80,
  ),
];
