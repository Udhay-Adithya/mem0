// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graph_store_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GraphStoreConfig _$GraphStoreConfigFromJson(Map<String, dynamic> json) =>
    GraphStoreConfig(
      provider: json['provider'] as String? ?? 'neo4j',
      config: Neo4jConfig.fromJson(json['config'] as Map<String, dynamic>),
      llm: json['llm'] as Map<String, dynamic>?,
      customPrompt: json['customPrompt'] as String?,
    );

Map<String, dynamic> _$GraphStoreConfigToJson(GraphStoreConfig instance) =>
    <String, dynamic>{
      'provider': instance.provider,
      'config': instance.config,
      'llm': instance.llm,
      'customPrompt': instance.customPrompt,
    };
