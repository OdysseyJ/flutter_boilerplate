import 'package:architecture_app/data/interface/local_storage_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageRepository implements LocalStorageRepositoryInterface {
  @override
  Future<void> clearAllData() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.clear();
  }

  @override
  Future<String> getToken() async {
    return 'asdf';
  }
}
