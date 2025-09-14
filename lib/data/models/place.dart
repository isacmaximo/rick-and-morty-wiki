import 'dart:convert';

class Place {
  String? name;
  String? url;

  Place({this.name, this.url});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'url': url};
  }

  factory Place.fromMap(Map<String, dynamic> map) {
    return Place(name: map['name'], url: map['url']);
  }

  String toJson() => json.encode(toMap());

  factory Place.fromJson(String source) =>
      Place.fromMap(json.decode(source) as Map<String, dynamic>);
}
