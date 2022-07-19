import 'package:hive/hive.dart';

class HiveRepository {
  static const _boxName = 'household_box';
  static final HiveRepository _instance = HiveRepository._internal();
  factory HiveRepository() {
    return _instance;
  }

  late final Box _box;
  HiveRepository._internal();

  Future<void> init() async {
    _box = await Hive.openBox(_boxName);
  }

  /// 読み取り
  dynamic get(String key) {
    return _box.get(key);
  }

  /// 書き込み
  Future<void> put(String key, dynamic value) async {
    return await _box.put(key, value);
  }
}
