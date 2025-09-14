import 'package:flutter_modular/flutter_modular.dart';
import 'package:rick_and_morty_wiki/core/shared/global_loading/loading_singleton.dart';
import 'package:rick_and_morty_wiki/data/network/http_client.dart';

class CoreModule extends Module {
  @override
  void exportedBinds(Injector i) {
    i.addInstance(LoadingSingleton().getController());
    i.addLazySingleton(HttpClient.new);
  }
}
