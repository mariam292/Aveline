class CategoryDataModel {
  final String id, name, description, coverPictureUrl;

  CategoryDataModel({
    required this.id,
    required this.name,
    required this.description,
    required this.coverPictureUrl,
  });

  factory CategoryDataModel.fromJson(Map<String, dynamic> json) {
    return CategoryDataModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      description: json[''] ?? '',
      coverPictureUrl: json['coverPictureUrl'] ?? '',
    );
  }
}
