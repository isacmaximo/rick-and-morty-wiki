// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:rick_and_morty_wiki/data/models/character.dart';
import 'package:rick_and_morty_wiki/data/models/page_info.dart';

class PageableCharachter {
  PageInfo? info;
  List<Character>? results;

  PageableCharachter({this.info, this.results});

  PageableCharachter copyWith({PageInfo? info, List<Character>? results}) {
    return PageableCharachter(
      info: info ?? this.info,
      results: results ?? this.results,
    );
  }

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

  @override
  String toString() => 'PageableCharachter(info: $info, results: $results)';

  @override
  bool operator ==(covariant PageableCharachter other) {
    if (identical(this, other)) return true;

    return other.info == info && listEquals(other.results, results);
  }

  @override
  int get hashCode => info.hashCode ^ results.hashCode;
}
