import 'package:flutter/material.dart';

List<String> menuNames = ['Home', 'Income outcome', 'Statistics', 'Tips'];
List<Widget> bottomIcons = [
  const Icon(Icons.menu),
  const Icon(Icons.menu),
  const Icon(Icons.menu),
  const Icon(Icons.menu),
];
List<Widget> pages = [
  const Center(
    child: Text('Home'),
  ),
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
