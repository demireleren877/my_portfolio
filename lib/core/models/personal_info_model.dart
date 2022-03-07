import 'package:cloud_firestore/cloud_firestore.dart';

class PersonalModel {
  String name;
  String title;
  String image;
  String country;
  String city;
  String age;
  PersonalModel({
    required this.name,
    required this.title,
    required this.image,
    required this.country,
    required this.city,
    required this.age,
  });

  factory PersonalModel.fromJson(Map<String, dynamic> json) => PersonalModel(
        name: json['name'].toString(),
        title: json['title'].toString(),
        image: json['image'].toString(),
        country: json['country'].toString(),
        city: json['city'].toString(),
        age: json['age'].toString(),
      );

  static PersonalModel fromSnapshot(DocumentSnapshot snapshot) {
    final PersonalModel infos = PersonalModel(
      name: snapshot['name'].toString(),
      title: snapshot['title'].toString(),
      image: snapshot['image'].toString(),
      country: snapshot['country'].toString(),
      city: snapshot['city'].toString(),
      age: snapshot['age'].toString(),
    );
    return infos;
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'title': title,
        'image': image,
        'country': country,
        'city': city,
        'age': age,
      };
}
