import 'package:json_annotation/json_annotation.dart';

part 'memory_item.g.dart';

@JsonSerializable()
class MemoryItem {
  final String id;
  final String memory;
  final String? hash;
  final Map<String, dynamic>? metadata;
  final double? score;
  final String? createdAt;
  final String? updatedAt;

  MemoryItem({
    required this.id,
    required this.memory,
    this.hash,
    this.metadata,
    this.score,
    this.createdAt,
    this.updatedAt,
  });

  factory MemoryItem.fromJson(Map<String, dynamic> json) =>
      _$MemoryItemFromJson(json);
  Map<String, dynamic> toJson() => _$MemoryItemToJson(this);
}
