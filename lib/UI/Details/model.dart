class DetailsModel {
  //late bool isFavorite;
  late final int id;
  late final int rating;
  late final String name;
  late final String image;
  late final String address;
  late final String favoriteType;
  late final double latitude;
  late final double longitude;
  late final String phone;
  late final String email;
  late final String website;
  late final String reviewTags;
  //late final String rankingInCity;
  //late final int hotelClass;
  //late final int numberOfReviews;
  //late final String priceRange;
  //late final String createdAt;
  //late final String updatedAt;

  DetailsModel({
    required this.id,
    required this.name,
    required this.image,
    required this.address,
    required this.favoriteType,
    //required this.isFavorite,
    required this.rating,
    required this.latitude,
    required this.longitude,
    required this.phone,
    required this.email,
    required this.website,
    required this.reviewTags,
  });
}
