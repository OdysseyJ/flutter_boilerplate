abstract class LocalStorageRepositoryInterface  {
  Future<String> getToken();
  Future<void> clearAllData();
}