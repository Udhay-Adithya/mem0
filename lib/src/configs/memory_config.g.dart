// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memory_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemoryConfig _$MemoryConfigFromJson(Map<String, dynamic> json) => MemoryConfig(
  vectorStore: VectorStoreConfig.fromJson(
    json['vectorStore'] as Map<String, dynamic>,
  ),
  llm: LlmConfig.fromJson(json['llm'] as Map<String, dynamic>),
  embedder: EmbedderConfig.fromJson(json['embedder'] as Map<String, dynamic>),
  historyDbPath: json['historyDbPath'] as String,
  graphStore: GraphStoreConfig.fromJson(
    json['graphStore'] as Map<String, dynamic>,
  ),
  version: json['version'] as String? ?? 'v1.1',
  customPrompt: json['customPrompt'] as String?,
);

Map<String, dynamic> _$MemoryConfigToJson(MemoryConfig instance) =>
    <String, dynamic>{
      'vectorStore': instance.vectorStore,
      'llm': instance.llm,
      'embedder': instance.embedder,
      'historyDbPath': instance.historyDbPath,
      'graphStore': instance.graphStore,
      'version': instance.version,
      'customPrompt': instance.customPrompt,
    };
