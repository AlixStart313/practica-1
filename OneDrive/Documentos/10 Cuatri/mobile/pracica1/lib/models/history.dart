class History {
  final String name;
  final String image;

  History({
    required this.name,
    required this.image,
  });

  // Factory constructor to create a History instance from JSON
  factory History.fromJson(Map<String, dynamic> json) {
    return History(
      name: json['name'],
      image: json['image'],
    );
  }
}
