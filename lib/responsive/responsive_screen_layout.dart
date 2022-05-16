import 'package:flutter/material.dart';
import 'package:instagram_flutter/utils/dimensions.dart';

class ResponsiveScreenLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;

  const ResponsiveScreenLayout(
      {Key? key,
      required this.mobileScreenLayout,
      required this.webScreenLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > webScreenSize) {
        // web screen
        return webScreenLayout;
      }
      // mobile screen
      return mobileScreenLayout;
    });
  }
}
