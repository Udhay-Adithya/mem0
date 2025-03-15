abstract interface class MemoryBase {
  Map<String, String> get(String memoryId);
  List<Map<String, String>> getAll();
  Map<String, String> update(String memoryId, Map<String, String> data);
  String delete(String memoryId);
  List history(String memoryId);
}
