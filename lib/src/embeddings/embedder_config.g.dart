// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'embedder_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmbedderConfig _$EmbedderConfigFromJson(Map<String, dynamic> json) =>
    EmbedderConfig(
      provider: json['provider'] as String? ?? 'openai',
      config: json['config'] as Map<String, dynamic>? ?? {},
    );

Map<String, dynamic> _$EmbedderConfigToJson(EmbedderConfig instance) =>
    <String, dynamic>{'provider': instance.provider, 'config': instance.config};
