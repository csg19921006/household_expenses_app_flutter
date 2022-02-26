import 'package:flutter/material.dart';
import 'package:household_expenses_app_flutter/ui/base_stateless_widget.dart';

class HomePage extends BasePage with BasicPage {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildDefaultWidget(title: 'home', body: Container());
  }
}
