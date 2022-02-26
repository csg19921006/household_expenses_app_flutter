import 'package:household_expenses_app_flutter/domain/view_model/tab_page_view_model.dart';
import 'package:household_expenses_app_flutter/ui/base_change_notifier.dart';

class TabPageChangeNotifier extends BaseChangeNotifier {
  final viewModel = TabPageViewModel();

  void changeCurrentPageIndex(int index) {
    viewModel.currentIndex = index;
    notifyListeners();
  }
}
