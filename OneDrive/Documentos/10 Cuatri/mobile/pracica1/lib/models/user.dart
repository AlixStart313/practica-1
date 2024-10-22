
import 'package:pracica1/models/history.dart';

class User {
  final String userName;
  final String name;
  final int publications;
  final int followers;
  final int followings;
  final String biography;
  final List<History> histories;
  final List<String> photos;

  User({
    required this.userName,
    required this.name,
    required this.publications,
    required this.followers,
    required this.followings,
    required this.biography,
    required this .histories,
    required this.photos 
  });

  factory User.fromJson(Map<String,dynamic> json){
    var histories = json['histories'] as List;
    List<History> listH= histories.map((item)=>History.fromJson(item)).toList();

    return User(
      userName: json['userName'],
      name: json['name'],
      publications: json['publications'],
      followers: json['followers'],
      followings: json['following'],
      biography: json['biography'],
      histories: listH,
      photos: List<String>.from(json['photos']),
    );
  }


}