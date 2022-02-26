abstract class AppTranslation {
  static Map<String, Map<String, String>> translation = {
    'en_EN': Locales.en_EN,
    'zh_CN': Locales.zh_CN,
    'fr_CA': Locales.zh_CN,
  };
}

abstract class LocaleKeys {
  static const change_zh = 'change_zh_CN';
  static const change_en = 'change_en_EN';
  static const home = 'home';
  static const searchFor = 'search_For';
  static const travel_shot = 'Travel_shot';
  static const mySelf = 'myself';
}

abstract class Locales {
  static const en_EN = {
    LocaleKeys.change_zh: 'change Chinese',
    LocaleKeys.change_en: 'change English',
    LocaleKeys.home: 'Home',
    LocaleKeys.searchFor: 'Search for',
    LocaleKeys.travel_shot: 'Travel shot',
    LocaleKeys.mySelf: 'myself',
  };
  static const zh_CN = {
    LocaleKeys.change_zh: '切换中文',
    LocaleKeys.change_en: '切换英文',
    LocaleKeys.home: '首页',
    LocaleKeys.searchFor: '搜索',
    LocaleKeys.travel_shot: '旅拍',
    LocaleKeys.mySelf: '我的',
  };

  static const fr_CA = {};
}
