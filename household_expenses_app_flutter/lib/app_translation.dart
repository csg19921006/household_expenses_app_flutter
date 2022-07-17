import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello World',
        },
        'zh_CN': {
          'hello': '你好 世界',
        },
        'ja_JP': {
          'hello': 'こんにちわ　世界',
        }
      };
}
