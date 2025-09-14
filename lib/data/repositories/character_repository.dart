import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:rick_and_morty_wiki/data/models/character.dart';
import 'package:rick_and_morty_wiki/data/models/pageable_charachter.dart';
import 'package:rick_and_morty_wiki/data/network/http_client.dart';
import 'package:rick_and_morty_wiki/utils/contants/api.dart';

class CharacterRepository {
  final HttpClient _client;
  final String _url = '$baseUrl/character/';

  CharacterRepository(this._client);

  Future<PageableCharachter> getCharacters({int? page, String? name}) async {
    try {
      Response response = await _client.get(
        _url,
        queryParameters: {'page': page, if (name != null) 'name': name},
      );
      return PageableCharachter.fromMap(response.data);
    } on DioException catch (e) {
      String message = 'Error fetching characters!';
      log(e.message ?? message);
      throw FlutterError(message);
    }
  }

  Future<Character> getCharacterById(int id) async {
    try {
      Response response = await _client.get('$_url/$id');
      return Character.fromMap(response.data);
    } on DioException catch (e) {
      String message = 'Character not found!';
      log(e.message ?? message);
      throw FlutterError(message);
    }
  }
}
