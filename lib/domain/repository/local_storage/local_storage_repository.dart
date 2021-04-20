import 'package:architecture_app/data/interface/local_storage_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageRepository implements LocalStorageRepositoryInterface {
  @override
  Future<void> clearAllData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.clear();
  }

  @override
  Future<String> getToken() {
    // TODO: implement getToken
    throw UnimplementedError();
  }
}
