// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vector_store_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VectorStoreConfig _$VectorStoreConfigFromJson(Map<String, dynamic> json) =>
    VectorStoreConfig(
      provider: json['provider'] as String? ?? 'chroma',
      config: json['config'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$VectorStoreConfigToJson(VectorStoreConfig instance) =>
    <String, dynamic>{'provider': instance.provider, 'config': instance.config};
