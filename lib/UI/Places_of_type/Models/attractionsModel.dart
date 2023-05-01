class AttractionsModel {
  AttractionsModel({
    required this.data,
  });
  late final List<Data> data;

  AttractionsModel.fromJson(Map<String, dynamic> json) {
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
    required this.numReviews,
    required this.locationString,
    this.ranking,
    this.rankingInCity,
    this.rating,
    this.description,
    required this.subcategory,
    this.subtype,
    this.phone,
    this.email,
    this.website,
    required this.attractionHours,
  });
  late final int id;
  late final String name;
  late final String? image;
  late final String? address;
  late final num? latitude;
  late final num? longitude;
  late final int? numReviews;
  late final String locationString;
  late final num? ranking;
  late final String? rankingInCity;
  late final num? rating;
  late final String? description;
  late final String? subcategory;
  late final String? subtype;
  late final String? phone;
  late final String? email;
  late final String? website;
  late final List<AttractionHours> attractionHours;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    address = json['address'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    numReviews = json['num_reviews'];
    locationString = json['location_string'];
    ranking = json['ranking'];
    rankingInCity = json['ranking_in_city'];
    rating = json['rating'];
    description = json['description'];
    subcategory = json['subcategory'];
    subtype = json['subtype'];
    phone = json['phone'];
    email = json['email'];
    website = json['website'];
    attractionHours = List.from(json['attractionHours'])
        .map((e) => AttractionHours.fromJson(e))
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
    _data['num_reviews'] = numReviews;
    _data['location_string'] = locationString;
    _data['ranking'] = ranking;
    _data['ranking_in_city'] = rankingInCity;
    _data['rating'] = rating;
    _data['description'] = description;
    _data['subcategory'] = subcategory;
    _data['subtype'] = subtype;
    _data['phone'] = phone;
    _data['email'] = email;
    _data['website'] = website;
    _data['attractionHours'] = attractionHours.map((e) => e.toJson()).toList();
    return _data;
  }
}

class AttractionHours {
  AttractionHours({
    required this.id,
    this.day1,
    this.day2,
    this.day3,
    this.day4,
    this.day5,
    this.day6,
    this.day7,
    required this.attractionId,
  });
  late final int id;
  late final String? day1;
  late final String? day2;
  late final String? day3;
  late final String? day4;
  late final String? day5;
  late final String? day6;
  late final String? day7;
  late final int attractionId;

  AttractionHours.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    day1 = json['day1'];
    day2 = json['day2'];
    day3 = json['day3'];
    day4 = json['day4'];
    day5 = json['day5'];
    day6 = json['day6'];
    day7 = json['day7'];
    attractionId = json['attraction_id'];
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
    _data['attraction_id'] = attractionId;
    return _data;
  }
}
