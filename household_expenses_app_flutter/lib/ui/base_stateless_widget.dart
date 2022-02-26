import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class BasePage extends StatelessWidget {
  const BasePage({Key? key}) : super(key: key);
}

mixin BasicPage<Page extends BasePage> {
  Widget buildDefaultWidget(
      {String? title, required Widget body, Widget? bottomNavigationBar}) {
    return Scaffold(
      appBar: title == null
          ? null
          : AppBar(
              title: Text(title),
            ),
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
