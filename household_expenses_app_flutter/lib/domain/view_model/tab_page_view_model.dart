import 'package:flutter/material.dart';
import 'package:household_expenses_app_flutter/ui/home/home_page.dart';
import 'package:household_expenses_app_flutter/ui/profile/profile_page.dart';
import 'base_view_model.dart';

class TabPageViewModel extends BaseViewModel {
  final List<Widget> _pageList = const [
    HomePage(),
    ProfilePage(),
  ];
  int currentIndex = 0;
  Widget get currentPage => _pageList[currentIndex];
  List<BottomNavigationBarItem> get bottomNavigationBarItems {
    return const [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
      BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today), label: 'calendar'),
    ];
  }
}
