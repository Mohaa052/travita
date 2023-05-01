class RestaurantsModel {
  RestaurantsModel({
    required this.data,
  });
  late final List<Data> data;

  RestaurantsModel.fromJson(Map<String, dynamic> json) {
    data = List.from(json['data']).map((e) => Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.name,
    this.image,
    required this.address,
    this.latitude,
    this.longitude,
    required this.numberOfReviews,
    this.ranking,
    this.rankingInCity,
    this.cuisine,
    this.dietaryRestrictions,
    this.phone,
    this.email,
    this.website,
    this.reviewTags,
    required this.restaurantHours,
  });
  late final int id;
  late final String name;
  late final String? image;
  late final String? address;
  late final num? latitude;
  late final num? longitude;
  late final int? numberOfReviews;
  late final num? ranking;
  late final String? rankingInCity;
  late final String? cuisine;
  late final String? dietaryRestrictions;
  late final String? phone;
  late final String? email;
  late final String? website;
  late final String? reviewTags;
  late final List<RestaurantHours> restaurantHours;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    address = json['address'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    numberOfReviews = json['numberOfReviews'];
    ranking = json['ranking'];
    rankingInCity = json['ranking_in_city'];
    cuisine = json['cuisine'];
    dietaryRestrictions = json['dietaryRestrictions'];
    phone = json['phone'];
    email = json['email'];
    website = json['website'];
    reviewTags = json['reviewTags'];
    restaurantHours = List.from(json['restaurantHours'])
        .map((e) => RestaurantHours.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['image'] = image;
    _data['address'] = address;
    _data['latitude'] = latitude;
    _data['longitude'] = longitude;
    _data['number_of_reviews'] = numberOfReviews;
    _data['ranking'] = ranking;
    _data['ranking_in_city'] = rankingInCity;
    _data['cuisine'] = cuisine;
    _data['dietary_restrictions'] = dietaryRestrictions;
    _data['phone'] = phone;
    _data['email'] = email;
    _data['website'] = website;
    _data['review_tags'] = reviewTags;
    _data['restaurant_hours'] = restaurantHours.map((e) => e.toJson()).toList();
    return _data;
  }
}

class RestaurantHours {
  RestaurantHours({
    required this.id,
    this.day1,
    this.day2,
    this.day3,
    this.day4,
    this.day5,
    this.day6,
    this.day7,
    required this.restaurantId,
  });
  late final int id;
  late final String? day1;
  late final String? day2;
  late final String? day3;
  late final String? day4;
  late final String? day5;
  late final String? day6;
  late final String? day7;
  late final int restaurantId;

  RestaurantHours.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    day1 = json['day1'];
    day2 = json['day2'];
    day3 = json['day3'];
    day4 = json['day4'];
    day5 = json['day5'];
    day6 = json['day6'];
    day7 = json['day7'];
    restaurantId = json['restaurant_id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['day1'] = day1;
    _data['day2'] = day2;
    _data['day3'] = day3;
    _data['day4'] = day4;
    _data['day5'] = day5;
    _data['day6'] = day6;
    _data['day7'] = day7;
    _data['restaurant_id'] = restaurantId;
    return _data;
  }
}
