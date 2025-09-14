// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on HomeControllerBase, Store {
  late final _$charactersAtom = Atom(
    name: 'HomeControllerBase.characters',
    context: context,
  );

  @override
  PageableCharachter? get characters {
    _$charactersAtom.reportRead();
    return super.characters;
  }

  @override
  set characters(PageableCharachter? value) {
    _$charactersAtom.reportWrite(value, super.characters, () {
      super.characters = value;
    });
  }

  late final _$currentPageAtom = Atom(
    name: 'HomeControllerBase.currentPage',
    context: context,
  );

  @override
  int get currentPage {
    _$currentPageAtom.reportRead();
    return super.currentPage;
  }

  @override
  set currentPage(int value) {
    _$currentPageAtom.reportWrite(value, super.currentPage, () {
      super.currentPage = value;
    });
  }

  late final _$onSearchChangedAsyncAction = AsyncAction(
    'HomeControllerBase.onSearchChanged',
    context: context,
  );

  @override
  Future<void> onSearchChanged(String value) {
    return _$onSearchChangedAsyncAction.run(() => super.onSearchChanged(value));
  }

  late final _$nextPageAsyncAction = AsyncAction(
    'HomeControllerBase.nextPage',
    context: context,
  );

  @override
  Future<void> nextPage() {
    return _$nextPageAsyncAction.run(() => super.nextPage());
  }

  late final _$previousPageAsyncAction = AsyncAction(
    'HomeControllerBase.previousPage',
    context: context,
  );

  @override
  Future<void> previousPage() {
    return _$previousPageAsyncAction.run(() => super.previousPage());
  }

  late final _$getCharactersAsyncAction = AsyncAction(
    'HomeControllerBase.getCharacters',
    context: context,
  );

  @override
  Future<void> getCharacters({int? page, String? name}) {
    return _$getCharactersAsyncAction.run(
      () => super.getCharacters(page: page, name: name),
    );
  }

  @override
  String toString() {
    return '''
characters: ${characters},
currentPage: ${currentPage}
    ''';
  }
}
