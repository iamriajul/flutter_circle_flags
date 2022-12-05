library circle_flags;

import 'package:flutter/material.dart';
import 'package:jovial_svg/jovial_svg.dart';

/// a rounded flag
class CircleFlag extends StatelessWidget {
  final String countryCode;
  final double size;

  final Widget Function(BuildContext)? onLoading;

  final Color? placeholderBackgroundColor;
  final Color? placeholderTextColor;
  final String assetName;

  CircleFlag(this.countryCode,
      {Key? key,
      this.size = 48,
      this.onLoading,
      this.placeholderBackgroundColor,
      this.placeholderTextColor})
      : assetName =
            'packages/circle_flags/assets/jovial/${countryCode.toLowerCase()}.si',
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: ScalableImageWidget.fromSISource(
        si: ScalableImageSource.fromSI(
          DefaultAssetBundle.of(context),
          assetName,
        ),
      ),
    );
  }
}