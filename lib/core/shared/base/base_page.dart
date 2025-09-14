import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class BasePage extends StatelessWidget {
  final Widget child;
  const BasePage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      child: SafeArea(child: Scaffold(body: child)),
    );
    ;
  }
}
