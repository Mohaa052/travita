import 'attrctions_hours_details.dart';

class AttractionsModel {
  late int id;
  late String name;
  late String image;
  late String address;
  late double latitude;
  late double longitude;
  late int num_reviews;
  late String location_string;
  late double ranking;
  late String ranking_in_city;
  late int rating;
  late String description;
  late String subcategory;
  late String subtype;
  late String phone;
  late String email;
  late String website;
  late List<AttractionsHoursDetails> attractionHours;

  AttractionsModel({
    required this.id,
    required this.name,
    required this.image,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.location_string,
    required this.ranking,
    required this.rating,
    required this.description,
    required this.subcategory,
    required this.subtype,
    required this.num_reviews,
    required this.ranking_in_city,
    required this.phone,
    required this.email,
    required this.website,
    required this.attractionHours,
  });

  AttractionsModel.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];
    this.image = json['image'];
    this.address = json['address'];
    this.latitude = json['latitude'];
    this.longitude = json['longitude'];
    this.location_string = json['location_string'];
    this.ranking = json['ranking'];
    this.rating = json['rating'];
    this.description = json['description'];
    this.subcategory = json['subcategory'];
    this.subtype = json['subtype'];
    this.num_reviews = json['num_reviews'];
    this.ranking_in_city = json['ranking_in_city'];
    this.phone = json['phone'];
    this.email = json['email'];
    this.website = json['website'];
    this.attractionHours = [];
    (json['attractionHours'] as List).forEach((element) {
      this.attractionHours.add(AttractionsHoursDetails.fromJson(element));
    });
  }
  Map<String, dynamic> toJson() {
    List<Map> attractionHoursList = [];
    this.attractionHours.forEach((element) {
      attractionHoursList.add(element.toJson());
    });
    Map<String, dynamic> json = {
      ' id ': this.id,
      ' name ': this.name,
      ' image ': this.image,
      ' address ': this.address,
      ' latitude ': this.latitude,
      ' longitude ': this.longitude,
      ' location_string ': this.location_string,
      ' ranking ': this.ranking,
      ' rating ': this.rating,
      ' description ': this.description,
      ' subcategory ': this.subcategory,
      ' subtype ': this.subtype,
      ' num_reviews ': this.num_reviews,
      ' ranking_in_city ': this.ranking_in_city,
      'phone': this.phone,
      'email': this.email,
      'website': this.website,
      'attractionHours': attractionHoursList,
    };
    return json;
  }
}
