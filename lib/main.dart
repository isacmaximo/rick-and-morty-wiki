import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rick_and_morty_wiki/core/shared/app/app.dart';
import 'package:rick_and_morty_wiki/modules/home/home_module.dart';

void main() {
  runApp(ModularApp(module: HomeModule(), child: App()));
}
