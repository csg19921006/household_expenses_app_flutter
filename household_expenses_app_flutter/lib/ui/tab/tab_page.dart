import 'package:flutter/material.dart';
import 'package:household_expenses_app_flutter/ui/base_stateless_widget.dart';

class TabPage extends BasePage {
  const TabPage({Key? key}) : super(key: key);

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends BaseState<TabPage> with BasicPage {
  @override
  Widget body() {
    return Container(color: Colors.red);
  }

  @override
  String screenName() {
    return 'TabPage';
  }
}
