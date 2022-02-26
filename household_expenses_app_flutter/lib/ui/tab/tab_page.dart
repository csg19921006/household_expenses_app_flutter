import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:household_expenses_app_flutter/domain/view_model/tab_page_view_model.dart';
import 'package:household_expenses_app_flutter/ui/base_stateless_widget.dart';
import 'package:household_expenses_app_flutter/ui/tab/tab_page_change_notifier.dart';
import 'package:provider/provider.dart';

class TabPage extends BasePage with BasicPage {
  const TabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => TabPageChangeNotifier(),
        ),
      ],
      child: Consumer<TabPageChangeNotifier>(
        builder: (context, cn, _) {
          final viewModel =
              Provider.of<TabPageChangeNotifier>(context).viewModel;

          return buildDefaultWidget(
            body: viewModel.currentPage,
            bottomNavigationBar: CupertinoTabBar(
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.calendar_today), label: 'calendar'),
              ],
              onTap: (index) {
                cn.changeCurrentPageIndex(index);
              },
              currentIndex: viewModel.currentIndex,
            ),
          );
        },
      ),
    );
  }
}
