import 'dart:convert';
import 'package:rick_and_morty_wiki/data/models/character.dart';
import 'package:rick_and_morty_wiki/data/models/page_info.dart';

class PageableCharachter {
  PageInfo? info;
  List<Character>? results;

  PageableCharachter({this.info, this.results});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'info': info?.toMap(),
      'results': results?.map((x) => x.toMap()).toList(),
    };
  }

  factory PageableCharachter.fromMap(Map<String, dynamic> map) {
    return PageableCharachter(
      info: map['info'] != null
          ? PageInfo.fromMap(map['info'] as Map<String, dynamic>)
          : null,
      results: map['results'] != null
          ? List<Character>.from(
              (map['results'] as List<dynamic>).map<Character?>(
                (x) => Character.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PageableCharachter.fromJson(String source) =>
      PageableCharachter.fromMap(json.decode(source) as Map<String, dynamic>);
}
