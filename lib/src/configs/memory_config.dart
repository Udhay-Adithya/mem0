import 'package:json_annotation/json_annotation.dart';
import 'package:path/path.dart' as path;

import 'package:mem0/src/embeddings/embedder_config.dart';
import 'package:mem0/src/graphs/graph_store_config.dart';
import 'package:mem0/src/llm/llm_config.dart';
import 'package:mem0/src/memory/mem0_config.dart';
import 'package:mem0/src/vector_stores/vector_store_config.dart';

part 'memory_config.g.dart';

@JsonSerializable()
class MemoryConfig {
  final VectorStoreConfig vectorStore;
  final LlmConfig llm;
  final EmbedderConfig embedder;
  final String historyDbPath;
  final GraphStoreConfig graphStore;

  @JsonKey(defaultValue: "v1.1")
  final String version;

  final String? customPrompt;

  // Default constructor required by json_serializable
  MemoryConfig({
    required this.vectorStore,
    required this.llm,
    required this.embedder,
    required this.historyDbPath,
    required this.graphStore,
    this.version = "v1.1",
    this.customPrompt,
  });

  // Static async factory method to create an instance
  static Future<MemoryConfig> create({
    required VectorStoreConfig vectorStore,
    required LlmConfig llm,
    required EmbedderConfig embedder,
    String? historyDbPath,
    required GraphStoreConfig graphStore,
    String version = "v1.1",
    String? customPrompt,
  }) async {
    // Compute the path asynchronously if not provided
    final dbPath =
        historyDbPath ?? path.join(await Mem0Config.getMem0Dir(), "history.db");

    return MemoryConfig(
      vectorStore: vectorStore,
      llm: llm,
      embedder: embedder,
      historyDbPath: dbPath,
      graphStore: graphStore,
      version: version,
      customPrompt: customPrompt,
    );
  }

  // JSON serialization
  factory MemoryConfig.fromJson(Map<String, dynamic> json) =>
      _$MemoryConfigFromJson(json);
  Map<String, dynamic> toJson() => _$MemoryConfigToJson(this);
}
