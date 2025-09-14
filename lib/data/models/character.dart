import 'dart:convert';
import 'package:rick_and_morty_wiki/data/models/place.dart';

class Character {
  int? id;
  String? name;
  String? status;
  String? species;
  String? type;
  String? gender;
  Place? origin;
  Place? location;
  String? image;
  List<String>? episode;
  String? url;
  String? created;

  Character({
    this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.origin,
    this.location,
    this.image,
    this.episode,
    this.url,
    this.created,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'status': status,
      'species': species,
      'type': type,
      'gender': gender,
      'origin': origin?.toMap(),
      'location': location?.toMap(),
      'image': image,
      'episode': episode,
      'url': url,
      'created': created,
    };
  }

  factory Character.fromMap(Map<String, dynamic> map) {
    return Character(
      id: map['id'],
      name: map['name'],
      status: map['status'],
      species: map['species'],
      type: map['type'],
      gender: map['gender'],
      origin: map['origin'] != null
          ? Place.fromMap(map['origin'] as Map<String, dynamic>)
          : null,
      location: map['location'] != null
          ? Place.fromMap(map['location'] as Map<String, dynamic>)
          : null,
      image: map['image'],
      episode: map['episode'] != null ? List.from((map['episode'])) : null,
      url: map['url'],
      created: map['created'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Character.fromJson(String source) =>
      Character.fromMap(json.decode(source) as Map<String, dynamic>);
}
