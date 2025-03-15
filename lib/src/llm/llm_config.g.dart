// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'llm_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LlmConfig _$LlmConfigFromJson(Map<String, dynamic> json) => LlmConfig(
  provider: json['provider'] as String? ?? 'openai',
  config: json['config'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$LlmConfigToJson(LlmConfig instance) => <String, dynamic>{
  'provider': instance.provider,
  'config': instance.config,
};
