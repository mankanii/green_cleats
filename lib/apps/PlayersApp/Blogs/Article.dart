class Article {
  String? author;
  String? title;
  String? description;
  String? category;
  String? date;

  Article({
    this.author,
    this.title,
    this.description,
    this.category,
    this.date,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      author: json['author'],
      title: json['blog_title'],
      description: json['description'],
      category: json['category'],
      date: json['date'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['author'] = author;
    data['blog_title'] = title;
    data['description'] = description;
    data['category'] = category;
    data['date'] = date;
    return data;
  }
}
