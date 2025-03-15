/// add [AzureConfig] azureConfig in the future;
class BaseEmbedderConfig {
  final String? model;
  final String? apiKey;
  final int? embeddingDims;

  // Ollama-specific
  final String? ollamaBaseUrl;

  // OpenAI-specific
  final String? openaiBaseUrl;

  // Huggingface-specific
  final Map<String, dynamic> modelKwargs;

  // VertexAI-specific
  final String? vertexCredentialsJson;
  final String? memoryAddEmbeddingType;
  final String? memoryUpdateEmbeddingType;
  final String? memorySearchEmbeddingType;

  BaseEmbedderConfig({
    this.model,
    this.apiKey,
    this.embeddingDims,
    this.ollamaBaseUrl,
    this.openaiBaseUrl,
    Map<String, dynamic>? modelKwargs,
    Map<String, dynamic>? azureKwargs,
    String? httpClientProxies,
    this.vertexCredentialsJson,
    this.memoryAddEmbeddingType,
    this.memoryUpdateEmbeddingType,
    this.memorySearchEmbeddingType,
  }) : modelKwargs = modelKwargs ?? {};
}
