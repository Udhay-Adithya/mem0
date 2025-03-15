import 'package:json_annotation/json_annotation.dart';
import 'package:mem0/src/graphs/neo4j_config.dart';

part 'graph_store_config.g.dart';

@JsonSerializable()
class GraphStoreConfig {
  @JsonKey(defaultValue: "neo4j")
  final String provider;

  final Neo4jConfig config;
  final Map<String, dynamic>? llm;
  final String? customPrompt;

  GraphStoreConfig({
    this.provider = "neo4j",
    required this.config,
    this.llm,
    this.customPrompt,
  }) {
    _validateProvider();
  }

  factory GraphStoreConfig.fromJson(Map<String, dynamic> json) =>
      _$GraphStoreConfigFromJson(json);
  Map<String, dynamic> toJson() => _$GraphStoreConfigToJson(this);

  void _validateProvider() {
    if (provider != "neo4j") {
      throw ArgumentError("Unsupported graph store provider: $provider");
    }
  }
}
