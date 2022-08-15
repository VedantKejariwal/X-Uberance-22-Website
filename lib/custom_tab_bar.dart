import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  CustomTabBar({required this.controller, required this.tabs});

  final TabController controller;
  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: TabBar(
        controller: controller,
        tabs: tabs,
        indicatorColor: Color(0xffff6961),
        padding: EdgeInsets.all(0),
      ),
    );
  }
}
