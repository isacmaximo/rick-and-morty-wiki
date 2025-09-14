import 'dart:convert';

class PageInfo {
  int? count;
  int? pages;
  String? next;
  String? prev;

  PageInfo({this.count, this.pages, this.next, this.prev});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'pages': pages,
      'next': next,
      'prev': prev,
    };
  }

  factory PageInfo.fromMap(Map<String, dynamic> map) {
    return PageInfo(
      count: map['count'],
      pages: map['pages'],
      next: map['next'],
      prev: map['prev'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PageInfo.fromJson(String source) =>
      PageInfo.fromMap(json.decode(source) as Map<String, dynamic>);
}
