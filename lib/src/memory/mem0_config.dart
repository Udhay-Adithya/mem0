import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

class Mem0Config {
  static Future<String> getMem0Dir() async {
    final directory = await getApplicationDocumentsDirectory();
    return '${directory.path}/.mem0';
  }

  static Future<void> setupConfig() async {
    final mem0Dir = await getMem0Dir();
    final configPath = '$mem0Dir/config.json';
    final directory = Directory(mem0Dir);

    if (!directory.existsSync()) {
      directory.createSync(recursive: true);
    }

    final file = File(configPath);
    if (!file.existsSync()) {
      final userId = Uuid().v4();
      final config = {'user_id': userId};
      file.writeAsStringSync(jsonEncode(config), flush: true);
    }
  }

  static Future<String> getUserId() async {
    final mem0Dir = await getMem0Dir();
    final configPath = '$mem0Dir/config.json';
    final file = File(configPath);

    if (!file.existsSync()) {
      return "anonymous_user";
    }

    try {
      final configData = file.readAsStringSync();
      final Map<String, dynamic> config = jsonDecode(configData);
      return config['user_id'] ?? "anonymous_user";
    } catch (e) {
      return "anonymous_user";
    }
  }
}
