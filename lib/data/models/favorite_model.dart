class FavoriteModel {
  final String id;
  final String name;
  final String assetName;
  final String? detail1;
  final String? detail2;
  final String? detail3;
  final List<String> filmUrls;

  FavoriteModel(
      {required this.assetName,
      this.detail1,
      this.detail2,
      this.detail3,
      required this.filmUrls,
      required this.id,
      required this.name});
      Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'assetName': assetName,
      'detail1': detail1,
      'detail2': detail2,
      'detail3': detail3,
      'filmUrls': filmUrls,
    };
  }

  factory FavoriteModel.fromJson(Map<String, dynamic> json) {
    return FavoriteModel(
      id: json['id'],
      name: json['name'],
      assetName: json['assetName'],
      detail1: json['detail1'],
      detail2: json['detail2'],
      detail3: json['detail3'],
      filmUrls: List<String>.from(json['filmUrls']),
      // другие поля, если есть
    );
  }
}
