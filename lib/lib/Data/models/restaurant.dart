import 'package:travita/lib/Data/models/restaurant_hours_details.dart';

class RestaurantModel {
  late int id;
  late String name;
  late String image;
  late String address;
  late int latitude;
  late int longitude;
  late int numberOfReviews;
  late String ranking;
  late String ranking_in_city;
  late String cuisine;
  late String dietaryRestrictions;
  late String phone;
  late String email;
  late String website;
  late String reviewTags;
  late List<RestaurantHOursDetails> restaurantHours;

  RestaurantModel({
    required this.id,
    required this.name,
    required this.image,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.numberOfReviews,
    required this.ranking,
    required this.ranking_in_city,
    required this.cuisine,
    required this.dietaryRestrictions,
    required this.phone,
    required this.email,
    required this.website,
    required this.reviewTags,
    required this.restaurantHours,
  });

  RestaurantModel.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];
    this.image = json['image'];
    this.address = json['address'];
    this.latitude = json['latitude'];
    this.longitude = json['longitude'];
    this.numberOfReviews = json['numberOfReviews'];
    this.ranking = json['ranking'];
    this.ranking_in_city = json['ranking_in_city'];
    this.cuisine = json['cuisine'];
    this.dietaryRestrictions = json['dietaryRestrictions'];
    this.phone = json['phone'];
    this.email = json['email'];
    this.website = json['website'];
    this.reviewTags = json['reviewTags'];
    this.restaurantHours = [];
    (json['restaurantHours'] as List).forEach((element) {
      this.restaurantHours.add(RestaurantHOursDetails.fromJson(element));
    });
  }

  Map<String, dynamic> toJson() {
    List<Map> restaurantHoursList = [];
    this.restaurantHours.forEach((element) {
      restaurantHoursList.add(element.toJson());
    });
    Map<String, dynamic> json = {
      'id': this.id,
      'name': this.name,
      'image': this.image,
      'address': this.address,
      'latitude': this.latitude,
      'longitude': this.longitude,
      'numberOfReviews': this.numberOfReviews,
      'ranking': this.ranking,
      'ranking_in_city': this.ranking_in_city,
      'cuisine': this.cuisine,
      'dietaryRestrictions': this.dietaryRestrictions,
      'phone': this.phone,
      'email': this.email,
      'website': this.website,
      'reviewTags': this.reviewTags,
      'restaurantHours': restaurantHoursList,
    };
    return json;
  }
}
