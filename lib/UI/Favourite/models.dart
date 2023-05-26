class FavoritesModel {
  late final Data data;

  FavoritesModel.fromJson(Map<String, dynamic> json) {
    data = Data.fromJson(json['data']);
  }
}

class FavoriteItem {
  late final int id;
  late final String name;
  late final String image;
  late final String address;
  late final String favoriteType;
  late bool isFavorite;
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

  FavoriteItem.fromJsonAttraction(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    address = json['address'];
    favoriteType = "Attraction";
    isFavorite = true;
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
  FavoriteItem.fromJsonHotels(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    address = json['address'];
    favoriteType = "Hotel";
    isFavorite = true;

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
  FavoriteItem.fromJsonRestaurants(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    address = json['address'];
    favoriteType = "Restaurant";
    isFavorite = true;
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
  late List<FavoriteItem> restaurant = [];
  late List<FavoriteItem> hotel = [];
  late List<FavoriteItem> attraction = [];

  late List<FavoriteItem> allFavorites = [];

  Data.fromJson(Map<String, dynamic> json) {
////////////////////////////////////////////////////////////////////////////////
    print("------------------------------------------------> I'm deleting");
    restaurant.clear();
    hotel.clear();
    attraction.clear();
    allFavorites.clear();

    print("------------------------------------------------> Deleted");
////////////////////////////////////////////////////////////////////////////////
    restaurant = List.from(json['Restaurant'])
        .map((e) => FavoriteItem.fromJsonRestaurants(e))
        .toList();
    hotel = List.from(json['Hotel'])
        .map((e) => FavoriteItem.fromJsonHotels(e))
        .toList();
    attraction = List.from(json['Attraction'])
        .map((e) => FavoriteItem.fromJsonAttraction(e))
        .toList();
////////////////////////////////////////////////////////////////////////////////

    allFavorites = restaurant + hotel + attraction;
    print("------------------------------------------------> Concatenated");
  }
}
