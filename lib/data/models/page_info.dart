// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PageInfo {
  int? count;
  int? pages;
  String? next;
  String? prev;

  PageInfo({this.count, this.pages, this.next, this.prev});

  PageInfo copyWith({int? count, int? pages, String? next, String? prev}) {
    return PageInfo(
      count: count ?? this.count,
      pages: pages ?? this.pages,
      next: next ?? this.next,
      prev: prev ?? this.prev,
    );
  }

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
      count: map['count'] != null ? map['count'] as int : null,
      pages: map['pages'] != null ? map['pages'] as int : null,
      next: map['next'] != null ? map['next'] as String : null,
      prev: map['prev'] != null ? map['prev'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PageInfo.fromJson(String source) =>
      PageInfo.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PageInfo(count: $count, pages: $pages, next: $next, prev: $prev)';
  }

  @override
  bool operator ==(covariant PageInfo other) {
    if (identical(this, other)) return true;

    return other.count == count &&
        other.pages == pages &&
        other.next == next &&
        other.prev == prev;
  }

  @override
  int get hashCode {
    return count.hashCode ^ pages.hashCode ^ next.hashCode ^ prev.hashCode;
  }
}
