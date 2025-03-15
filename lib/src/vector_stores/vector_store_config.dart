import 'package:json_annotation/json_annotation.dart';
import 'package:mem0/src/configs/vector_stores/chroma_db_config.dart'
    show ChromaDbConfig;

part 'vector_store_config.g.dart';

// TODO: Add more vector store providers
//     "qdrant": (data) => QdrantConfig.fromJson(data),
//     "pgvector": (data) => PGVectorConfig.fromJson(data),
//     "milvus": (data) => MilvusDBConfig.fromJson(data),
//     "azure_ai_search": (data) => AzureAISearchConfig.fromJson(data),
//     "redis": (data) => RedisDBConfig.fromJson(data),
//     "elasticsearch": (data) => ElasticsearchConfig.fromJson(data),
//     "vertex_ai_vector_search":
//         (data) => GoogleMatchingEngineConfig.fromJson(data),
//     "opensearch": (data) => OpenSearchConfig.fromJson(data),
//     "supabase": (data) => SupabaseConfig.fromJson(data),
//     "weaviate": (data) => WeaviateConfig.fromJson(data),

@JsonSerializable()
class VectorStoreConfig {
  @JsonKey(defaultValue: "chroma")
  final String provider;
  Map<String, dynamic>? config;

  static final Map<String, dynamic Function(Map<String, dynamic>)>
  _providerConfigs = {"chroma": (data) => ChromaDbConfig.fromJson(data)};

  VectorStoreConfig({required this.provider, this.config}) {
    validateAndCreateConfig();
  }

  factory VectorStoreConfig.fromJson(Map<String, dynamic> json) =>
      _$VectorStoreConfigFromJson(json);
  Map<String, dynamic> toJson() => _$VectorStoreConfigToJson(this);

  void validateAndCreateConfig() {
    if (!_providerConfigs.containsKey(provider)) {
      throw ArgumentError("Unsupported vector store provider: $provider");
    }

    final configClass = _providerConfigs[provider]!;

    if (config == null) {
      config = {"path": "/tmp/$provider"};
    } else if (config is! Map<String, dynamic>) {
      throw ArgumentError("Invalid config type for provider $provider");
    }

    if (!config!.containsKey("path")) {
      config!["path"] = "/tmp/$provider";
    }

    config = configClass(config!);
  }
}
