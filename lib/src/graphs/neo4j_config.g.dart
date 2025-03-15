// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'neo4j_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Neo4jConfig _$Neo4jConfigFromJson(Map<String, dynamic> json) => Neo4jConfig(
  url: json['url'] as String,
  username: json['username'] as String,
  password: json['password'] as String,
);

Map<String, dynamic> _$Neo4jConfigToJson(Neo4jConfig instance) =>
    <String, dynamic>{
      'url': instance.url,
      'username': instance.username,
      'password': instance.password,
    };
