class PlacesModel {
  late final List<DetailsModel> data;
  PlacesModel.fromJsonRestaurants(Map<String, dynamic> json) {
    data = List.from(json['data'])
        .map((e) => DetailsModel.fromJsonRestaurants(e))
        .toList();
  }
  PlacesModel.fromJsonHotels(Map<String, dynamic> json) {
    data = List.from(json['data'])
        .map((e) => DetailsModel.fromJsonHotels(e))
        .toList();
  }
  PlacesModel.fromJsonAttraction(Map<String, dynamic> json) {
    data = List.from(json['data'])
        .map((e) => DetailsModel.fromJsonAttraction(e))
        .toList();
  }
  PlacesModel.fromJsonSearchResult(List<dynamic> json) {
    /*List<List<List<Map<String, dynamic>>>> jsonData =
        List<List<List<Map<String, dynamic>>>>.from(json.decode(json));

    for (var tourList in jsonData) {
      for (var tourData in tourList) {
        for (var tourJson in tourData) {
          data.add(DetailsModel.fromJsonSearchResult(tourJson));
        }
      }
    }*/
    for (int i = 0; i = json[0][0].lenght; i++) {
      if (json[0][0][i].length != 0) {
        data.add(DetailsModel.fromJsonSearchResult(json[0][0][i][0]));
      }
    }

    /*json[0][0].forEach((element) {
      if (element.length != 0) {
        data.add(DetailsModel.fromJsonSearchResult(element[0]));
      }
    });*/
    /*data = List.from(json[0][0][0])
        .map((e) => DetailsModel.fromJsonAttraction(e))
        .toList();*/
  }
}

class DetailsModel {
  /*
  late final int? numberOfReviews;
  late final int? ranking;
  late final String? rankingInCity;
  late final String? cuisine;
  late final String? dietaryRestrictions;
  late final String? reviewTags;*/
  late final int id;
  late bool isFavorite;
  late final String name;
  late final String? image;
  late final String? address;
  late final String type;
  late final double? latitude;
  late final double? longitude;
  late final String? phone;
  late final String? email;
  late final String? website;
  late final String favoriteType;
  late final String? location;
  late final String? subtype;
  late final String? subcategory;
  int? rating;
  String? description;

  DetailsModel({
    required this.id,
    required this.name,
    required this.image,
    required this.address,
    required this.type,
    required this.description,
    required this.rating,
    required this.latitude,
    required this.longitude,
    required this.phone,
    required this.email,
    required this.website,
  });

  DetailsModel.fromJsonAttraction(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    address = json['address'];
    rating = json['rating'];
    isFavorite = true;
    if (json['latitude'] != null) {
      latitude = json['latitude'].toDouble();
    }
    if (json['longitude'] != null) {
      longitude = json['longitude'].toDouble();
    }
    phone = json['phone'];
    email = json['email'];
    website = json['website'];
    favoriteType = "Attraction";
  }
  DetailsModel.fromJsonHotels(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    address = json['address'];
    rating = json['rating'];
    isFavorite = true;
    if (json['latitude'] != null) {
      latitude = json['latitude'].toDouble();
    }
    if (json['longitude'] != null) {
      longitude = json['longitude'].toDouble();
    }
    phone = json['phone'];
    email = json['email'];
    website = json['website'];
    favoriteType = "Hotel";
  }
  DetailsModel.fromJsonRestaurants(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    address = json['address'];
    rating = json['rating'];
    isFavorite = true;
    if (json['latitude'] != null) {
      latitude = json['latitude'].toDouble();
    }
    if (json['longitude'] != null) {
      longitude = json['longitude'].toDouble();
    }
    phone = json['phone'];
    email = json['email'];
    website = json['website'];
    favoriteType = "Restaurant";
  }
  DetailsModel.fromJsonSearchResult(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    address = json['address'];
    rating = json['rating'];
    isFavorite = true;
    if (json['latitude'] != null) {
      latitude = json['latitude'].toDouble();
    }
    if (json['longitude'] != null) {
      longitude = json['longitude'].toDouble();
    }
    phone = json['phone'];
    email = json['email'];
    website = json['website'];
    favoriteType = json["Restaurant"];
    location = json["location_string"];
    subcategory = json["subcategory"];
    subtype = json["subtype"];
  }
}
