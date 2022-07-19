import 'package:household_expenses_app_flutter/domain/hive_repository.dart';

class HiveUseCase {
  final HiveRepository _hiveRepository = HiveRepository();
  static const _token = 'refreshToken';

  Future<void> init() async {
    await _hiveRepository.init();
  }

  /// token
  Future<void> storeSignInId(String id) async {
    await _hiveRepository.put(_token, id);
  }

  String readSignInId() {
    return _hiveRepository.get(_token) ?? '';
  }
}
