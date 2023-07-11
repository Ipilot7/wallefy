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