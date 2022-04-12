import 'dart:convert';

class Imagems {
  final String image;

  Imagems({
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return {
      'image': image,
    };
  }

  factory Imagems.fromMap(Map<String, dynamic> map) {
    return Imagems(
      image: map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Imagems.fromJson(String source) =>
      Imagems.fromMap(json.decode(source));
}
