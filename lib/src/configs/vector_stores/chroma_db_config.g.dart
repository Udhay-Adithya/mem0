// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chroma_db_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChromaDbConfig _$ChromaDbConfigFromJson(Map<String, dynamic> json) =>
    ChromaDbConfig(
      collectionName: json['collectionName'] as String? ?? 'mem0',
      path: json['path'] as String?,
      host: json['host'] as String?,
      port: (json['port'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ChromaDbConfigToJson(ChromaDbConfig instance) =>
    <String, dynamic>{
      'collectionName': instance.collectionName,
      'path': instance.path,
      'host': instance.host,
      'port': instance.port,
    };
