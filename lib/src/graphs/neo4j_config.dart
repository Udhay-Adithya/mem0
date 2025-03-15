import 'package:json_annotation/json_annotation.dart';

part 'neo4j_config.g.dart';

@JsonSerializable()
class Neo4jConfig {
  final String url;
  final String username;
  final String password;

  Neo4jConfig({
    required this.url,
    required this.username,
    required this.password,
  }) {
    _validateConfig();
  }

  factory Neo4jConfig.fromJson(Map<String, dynamic> json) =>
      _$Neo4jConfigFromJson(json);
  Map<String, dynamic> toJson() => _$Neo4jConfigToJson(this);

  void _validateConfig() {
    if (url.isEmpty || username.isEmpty || password.isEmpty) {
      throw ArgumentError("Please provide 'url', 'username', and 'password'.");
    }
  }
}
