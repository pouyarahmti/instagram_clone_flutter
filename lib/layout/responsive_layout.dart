import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.mobileLayout,
    required this.webLayout,
  });

  final Widget mobileLayout;
  final Widget webLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraint) {
      if (constraint.maxWidth > 600) {
        return webLayout;
      } else {
        return mobileLayout;
      }
    });
  }
}
