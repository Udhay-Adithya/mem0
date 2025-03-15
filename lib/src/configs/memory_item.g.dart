// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memory_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemoryItem _$MemoryItemFromJson(Map<String, dynamic> json) => MemoryItem(
  id: json['id'] as String,
  memory: json['memory'] as String,
  hash: json['hash'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
  score: (json['score'] as num?)?.toDouble(),
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
);

Map<String, dynamic> _$MemoryItemToJson(MemoryItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'memory': instance.memory,
      'hash': instance.hash,
      'metadata': instance.metadata,
      'score': instance.score,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
