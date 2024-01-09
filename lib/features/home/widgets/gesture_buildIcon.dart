import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';


GestureDetector buildIcon(IconData icon, int index, TabsRouter tabsRouter, void _openPage(int index, TabsRouter tabsRouter), _selectPageIndex) {
    return GestureDetector(
      onTap: () => _openPage(index, tabsRouter),
      child: Icon(
        icon,
        color: _selectPageIndex == index ? const Color(0xFFFFFFFF) : const Color(0xFF6D6D6F),
      ),
    );
  }