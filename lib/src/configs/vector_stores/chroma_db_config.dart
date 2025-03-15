import 'package:json_annotation/json_annotation.dart';

part 'chroma_db_config.g.dart';

@JsonSerializable()
class ChromaDbConfig {
  @JsonKey(defaultValue: "mem0")
  final String collectionName;
  final String? path;
  final String? host;
  final int? port;

  ChromaDbConfig({
    this.collectionName = "mem0",
    this.path,
    this.host,
    this.port,
  }) {
    _checkHostPortOrPath();
  }

  factory ChromaDbConfig.fromJson(Map<String, dynamic> json) =>
      _$ChromaDbConfigFromJson(json);
  Map<String, dynamic> toJson() => _$ChromaDbConfigToJson(this);

  void _checkHostPortOrPath() {
    if ((path == null) && (host == null || port == null)) {
      throw ArgumentError(
        "Either 'host' and 'port' or 'path' must be provided.",
      );
    }
  }

  static void validateExtraFields(Map<String, dynamic> values) {
    const allowedFields = {"collectionName", "path", "host", "port"};
    final inputFields = values.keys.toSet();
    final extraFields = inputFields.difference(allowedFields);

    if (extraFields.isNotEmpty) {
      throw ArgumentError(
        "Extra fields not allowed: ${extraFields.join(", ")}. Please input only the following fields: ${allowedFields.join(", ")}",
      );
    }
  }
}
