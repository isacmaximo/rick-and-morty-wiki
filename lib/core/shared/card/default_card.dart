import 'package:flutter/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DefaultCard extends StatelessWidget {
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? width;
  final double? height;
  final Widget child;
  final double? borderRadius;
  final List<BoxShadow>? boxShadow;
  final BoxBorder? border;

  const DefaultCard({
    super.key,
    this.backgroundColor,
    this.padding,
    this.margin,
    this.width,
    this.height,
    required this.child,
    this.borderRadius,
    this.boxShadow,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 8.px)),
        boxShadow: boxShadow,
        border: border,
      ),
      child: child,
    );
  }
}
