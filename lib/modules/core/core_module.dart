import 'package:flutter_modular/flutter_modular.dart';
import 'package:rick_and_morty_wiki/data/network/http_client.dart';

class CoreModule extends Module {
  @override
  void exportedBinds(Injector i) {
    i.addLazySingleton(HttpClient.new);
  }
}
