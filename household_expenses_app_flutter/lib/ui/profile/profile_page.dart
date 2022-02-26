import 'package:flutter/material.dart';
import 'package:household_expenses_app_flutter/ui/base_stateless_widget.dart';

class ProfilePage extends BasePage with BasicPage {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildDefaultWidget(title: 'profile', body: Container());
  }
}
