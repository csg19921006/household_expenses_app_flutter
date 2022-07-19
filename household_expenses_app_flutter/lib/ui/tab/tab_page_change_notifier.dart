import 'package:household_expenses_app_flutter/domain/view_model/base_viewmodel.dart';
import 'package:household_expenses_app_flutter/domain/view_model/tab_page_view_model.dart';

class TabPageChangeNotifier extends BaseViewModel {
  final viewModel = TabPageViewModel();

  void changeCurrentPageIndex(int index) {
    viewModel.currentIndex = index;
    notifyListeners();
  }
}
