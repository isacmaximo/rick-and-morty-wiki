import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rick_and_morty_wiki/core/shared/card/default_card.dart';
import 'package:rick_and_morty_wiki/core/themes/text_styles.dart';
import 'package:rick_and_morty_wiki/utils/constants/sizes.dart';

class SearchInput extends StatelessWidget {
  final TextEditingController? controller;
  final void Function(String)? onChanged;

  const SearchInput({super.key, this.controller, this.onChanged});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return DefaultCard(
      width: defaultWithSize,
      margin: EdgeInsets.symmetric(vertical: 16.px),
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: 'Search by name',
          hintStyle: AppTextStyles.hintText,

          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),

          fillColor: colorScheme.primary.withAlpha(100),
          prefixIcon: Icon(Icons.search, color: colorScheme.secondary),
        ),
      ),
    );
  }
}
