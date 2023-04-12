class HotelModel {
  late int id;
  late String name;
  late String image;
  late String address;
  late int latitude;
  late int longitude;
  late String phone;
  late String email;
  late String website;
  late int rating;
  late String ranking_in_city;
  late String reviewTags;
  late int hotelClass;
  late int numberOfReviews;
  late String priceRange;
  HotelModel({
    required this.id,
    required this.name,
    required this.image,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.phone,
    required this.email,
    required this.website,
    required this.rating,
    required this.ranking_in_city,
    required this.reviewTags,
    required this.hotelClass,
    required this.numberOfReviews,
    required this.priceRange,
  });

  HotelModel.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];
    this.image = json['image'];
    this.address = json['address'];
    this.latitude = json['latitude'];
    this.longitude = json['longitude'];
    this.phone = json['phone'];
    this.email = json['email'];
    this.website = json['website'];
    this.rating = json['rating'];
    this.ranking_in_city = json['ranking_in_city'];
    this.reviewTags = json['reviewTags'];
    this.hotelClass = json['hotelClass'];
    this.numberOfReviews = json['numberOfReviews'];
    this.priceRange = json['priceRange'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {
      'id': this.id,
      'name': this.name,
      'image': this.image,
      'address': this.address,
      'latitude': this.latitude,
      'longitude': this.longitude,
      'phone': this.phone,
      'email': this.email,
      'website': this.website,
      'rating': this.rating,
      'ranking_in_city': this.ranking_in_city,
      'reviewTags': this.reviewTags,
      'hotelClass': this.hotelClass,
      'numberOfReviews': this.numberOfReviews,
      'priceRange': this.priceRange,
    };
    return json;
  }
}
