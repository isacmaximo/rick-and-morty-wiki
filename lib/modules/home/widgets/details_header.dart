import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rick_and_morty_wiki/core/themes/text_styles.dart';
import 'package:rick_and_morty_wiki/modules/home/widgets/image_card.dart';
import 'package:rick_and_morty_wiki/modules/home/widgets/status_flag.dart';

class DetailsHeader extends StatelessWidget {
  final String? name;
  final String? status;
  final String? imageUrl;

  const DetailsHeader({super.key, this.name, this.status, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 80.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back, size: 24.px),
                onPressed: () {
                  Modular.to.pop();
                },
              ),

              Flexible(
                //width: 50.w,
                child: Text(
                  name ?? '',
                  style: AppTextStyles.biggestTitle,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(width: 24.px),
              // Espaço para equilibrar o layout
            ],
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.px),
          child: StatusFlag(status: status ?? 'Unknown'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.px),
          child: ImageCard(imageUrl: imageUrl, width: 80.w, height: 80.w),
        ),
      ],
    );
  }
}
