class FavouriteModel {
  int? id;
  final String image;
  final String name;
  final String description;
  final int rate;

  FavouriteModel({
    this.id,
    required this.image,
    required this.name,
    required this.description,
    required this.rate,
  });
  factory FavouriteModel.fromJson(Map<String, dynamic> json) {
    return FavouriteModel(
      id: json['id'],
      image: json['image'],
      name: json['name'],
      description: json['description'],
      rate: json['rate'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image': image,
      'name': name,
      'description': description,
      'rate': rate,
    };
  }
}
