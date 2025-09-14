import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rick_and_morty_wiki/core/shared/global_loading/loading_singleton.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:rick_and_morty_wiki/core/shared/global_loading/loading_wrapper.dart';
import 'package:rick_and_morty_wiki/core/themes/themes.dart';

class App extends StatelessWidget {
  final _loadingController = LoadingSingleton().getController();

  App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return KeyboardVisibilityProvider(
      child: ResponsiveSizer(
        builder: (context, orientation, screenType) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Rick and Morty Wiki',
            theme: Themes.lightTheme,
            routeInformationParser: Modular.routeInformationParser,
            routerDelegate: Modular.routerDelegate,
            builder: EasyLoading.init(
              builder: (context, child) => Observer(
                builder: (context) => LoadingWrapper(
                  isLoading: _loadingController.isLoading,
                  child: child,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
