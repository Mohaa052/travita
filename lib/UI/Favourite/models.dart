class FavoritesModel {
  late final Data data;

  FavoritesModel.fromJson(Map<String, dynamic> json) {
    data = Data.fromJson(json['data']);
  }
}

class Items {
  late final int id;
  late final String name;
  late final String image;
  late final String address;
  late final int rating;
/*  late final double latitude;
  late final double longitude;
  late final String phone;
  late final String email;
  late final String website;
  late final String rankingInCity;
  late final String reviewTags;
  late final int hotelClass;
  late final int numberOfReviews;
  late final String priceRange;
  late final String createdAt;
  late final String updatedAt;
  late final Pivot pivot;*/

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    address = json['address'];
/*    latitude = json['latitude'];
    longitude = json['longitude'];
    phone = json['phone'];
    email = json['email'];
    website = json['website'];
    rating = json['rating'];
    rankingInCity = json['ranking_in_city'];
    reviewTags = json['reviewTags'];
    hotelClass = json['hotelClass'];
    numberOfReviews = json['numberOfReviews'];
    priceRange = json['priceRange'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    pivot = Pivot.fromJson(json['pivot']);*/
  }
}

class Data {
  late final List<Items> restaurant;
  late final List<Items> hotel;
  late final List<Items> attraction;

  late final List<Items> allFavorites;

  Data.fromJson(Map<String, dynamic> json) {
    restaurant =
        List.from(json['Restaurant']).map((e) => Items.fromJson(e)).toList();
    hotel = List.from(json['Hotel']).map((e) => Items.fromJson(e)).toList();
    attraction =
        List.from(json['Attraction']).map((e) => Items.fromJson(e)).toList();

    allFavorites.addAll(restaurant);
    allFavorites.addAll(hotel);
    allFavorites.addAll(attraction);
  }
}
