class Article {
  final String title;
  final String description;
  final String imageUrl;
  final String articleUrl;
  final String source;
  final DateTime publishedAt;
  final String content;  // New content field

  Article({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.articleUrl,
    required this.source,
    required this.publishedAt,
    required this.content,  // Initialize the content field
  });

  // Factory constructor to create an Article instance from JSON
  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      title: json['title'] ?? 'No title available',
      description: json['description'] ?? 'No description available',
      imageUrl: json['urlToImage'] ?? '',  // Change key based on your API response
      articleUrl: json['url'] ?? 'URL not found',
      source: json['source']['name'] ?? 'Unknown source',
      publishedAt: DateTime.parse(json['publishedAt'] ?? DateTime.now().toIso8601String()),
      content: json['content'] ?? 'No content available',  // Parse the content field
    );
  }

  // Method to convert an Article instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'urlToImage': imageUrl,
      'url': articleUrl,
      'source': {'name': source},
      'publishedAt': publishedAt.toIso8601String(),
      'content': content,  // Include the content field in JSON
    };
  }
}
