import 'package:json_annotation/json_annotation.dart';

part 'llm_config.g.dart';

@JsonSerializable()
class LlmConfig {
  @JsonKey(defaultValue: "openai")
  final String provider;
  final Map<String, dynamic>? config;

  LlmConfig({this.provider = "openai", Map<String, dynamic>? config})
    : config = config ?? {} {
    _validateConfig();
  }

  factory LlmConfig.fromJson(Map<String, dynamic> json) =>
      _$LlmConfigFromJson(json);
  Map<String, dynamic> toJson() => _$LlmConfigToJson(this);

  void _validateConfig() {
    const allowedProviders = {
      "openai",
      "ollama",
      "anthropic",
      "groq",
      "together",
      "aws_bedrock",
      "litellm",
      "azure_openai",
      "openai_structured",
      "azure_openai_structured",
      "gemini",
      "deepseek",
      "xai",
    };

    if (!allowedProviders.contains(provider)) {
      throw ArgumentError("Unsupported LLM provider: $provider");
    }
  }
}
