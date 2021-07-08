class Restaurant {
  final String name;
  final String images;
  final double rating;
  final String totalTime;

  Restaurant({this.name, this.images, this.rating, this.totalTime});

  factory Restaurant.fromJson(dynamic json) {
    return Restaurant(
        name: json['name'] as String,
        images: json['images'][0]['hostedLargeUrl'] as String,
        rating: json['rating'] as double,
        totalTime: json['totalTime'] as String);
  }

  static List<Restaurant> restaurantFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Restaurant.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    return 'Restaurant{name:$name,image:$images,rating:$rating,totalTime:$totalTime}';
  }
}
