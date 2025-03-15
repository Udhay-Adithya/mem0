import 'package:json_annotation/json_annotation.dart';

part 'embedder_config.g.dart';

@JsonSerializable()
class EmbedderConfig {
  @JsonKey(defaultValue: "openai")
  final String provider;

  @JsonKey(defaultValue: {})
  final Map<String, dynamic> config;

  EmbedderConfig({this.provider = "openai", Map<String, dynamic>? config})
    : config = config ?? {} {
    _validateConfig();
  }

  factory EmbedderConfig.fromJson(Map<String, dynamic> json) =>
      _$EmbedderConfigFromJson(json);
  Map<String, dynamic> toJson() => _$EmbedderConfigToJson(this);

  void _validateConfig() {
    const allowedProviders = {
      "openai",
      "ollama",
      "huggingface",
      "azure_openai",
      "gemini",
      "vertexai",
      "together",
    };

    if (!allowedProviders.contains(provider)) {
      throw ArgumentError("Unsupported embedding provider: $provider");
    }
  }
}
