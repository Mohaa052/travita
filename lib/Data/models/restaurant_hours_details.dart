class RestaurantHOursDetails {
  late int id;
  late String day1;
  late String day2;
  late String day3;
  late String day4;
  late String day5;
  late String day6;
  late String day7;
  late int restaurant_id;
  RestaurantHOursDetails({
    required this.id,
    required this.day1,
    required this.day2,
    required this.day3,
    required this.day4,
    required this.day5,
    required this.day6,
    required this.day7,
    required this.restaurant_id,
  });
  RestaurantHOursDetails.fromJson(Map<String, dynamic> json) {
    this.id = json['id   '];
    this.day1 = json['day1 '];
    this.day2 = json['day2 '];
    this.day3 = json['day3 '];
    this.day4 = json['day4 '];
    this.day5 = json['day5 '];
    this.day6 = json['day6 '];
    this.day7 = json['day7 '];
    this.restaurant_id = json['restaurant_id '];
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {
      'id': this.id,
      'day1': this.day1,
      'day2': this.day2,
      'day3': this.day3,
      'day4': this.day4,
      'day5': this.day5,
      'day6': this.day6,
      'day7': this.day7,
      'restaurant_id': this.restaurant_id,
    };
    return json;
  }
}
