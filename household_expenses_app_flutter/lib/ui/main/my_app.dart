import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:household_expenses_app_flutter/app_translation.dart';
import 'package:household_expenses_app_flutter/domain/hive_usecase.dart';
import 'package:household_expenses_app_flutter/ui/main/my_app_viewmodel.dart';
import 'package:household_expenses_app_flutter/ui/tab/tab_page.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MyAppViewModel(),
        ),
      ],
      child: Consumer<MyAppViewModel>(
        builder: (context, viewModel, _) {
          return GetMaterialApp(
            title: 'Flutter Demo',
            //设置过渡动画
            defaultTransition: Transition.fade,
            translations: Messages(),
            //设置默认语言
            locale: Get.deviceLocale,
            // 在配置错误的情况下,使用的语言
            fallbackLocale: Locale('en', 'EN'),
            //根据translationsKeys来进行自定义的内容进行翻译
            theme: ThemeData(
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: _buildWidget(),
          );
        },
      ),
    );
  }

  Widget _buildWidget() {
    if (HiveUseCase().readSignInId().isNotEmpty) {
      return TabPage();
    } else {
      return Container();
    }
  }
}
