import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rick_and_morty_wiki/core/shared/card/default_card.dart';

class ImageCard extends StatelessWidget {
  final String? imageUrl;
  final double? width;
  final double? height;
  const ImageCard({super.key, this.imageUrl, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return DefaultCard(
      backgroundColor: colorScheme.secondary,
      width: width ?? 64.w,
      height: height ?? 64.w,
      border: Border.all(width: 5),
      child: imageUrl != null
          ? ClipRRect(
              borderRadius: BorderRadius.circular(4.px),
              child: Image.network(
                imageUrl!,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, progress) {
                  if (progress == null) return child;
                  return Center(
                    child: SizedBox(
                      width: 30.w,
                      height: 30.w,
                      child: CircularProgressIndicator(
                        color: colorScheme.primary,
                      ),
                    ),
                  );
                },
              ),
            )
          : Icon(Icons.person, size: 42.px, color: colorScheme.primary),
    );
  }
}
