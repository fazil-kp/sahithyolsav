import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

extension WidgetExtensions on Widget {
  /// Center the widget
  Widget center() {
    return Center(child: this);
  }

  /// Wrap the widget in an Expanded widget
  Widget expanded({int flex = 1}) {
    return Expanded(flex: flex, child: this);
  }

  /// Add padding around the widget
  Widget padding({EdgeInsetsGeometry padding = const EdgeInsets.all(8.0)}) {
    return Padding(padding: padding, child: this);
  }

  /// Add onTap functionality using GestureDetector
  Widget onTap(Function? function) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(onTap: function as void Function()?, child: this),
    );
  }
}

// int Extensions
extension IntExtensions on int? {
  /// Leaves given height of space
  Widget get height => SizedBox(height: this?.toDouble());

  /// Leaves given width of space
  Widget get width => SizedBox(width: this?.toDouble());
}

extension ContextExtensions on BuildContext {
  double get width => MediaQuery.sizeOf(this).width;
  double get height => MediaQuery.sizeOf(this).height;

  /// Returns true if the screen width is less than 640 (Mobile).
  bool get isMobile => width < 640;

  /// Returns true if the screen width is between 640 and 1023 (Tablet).
  bool get isTablet => width >= 640 && width < 1024;

  /// Returns true if the screen width is 1024 or more (Desktop).
  bool get isDesktop => width >= 1024;
}

extension StringExtensions on String {
  double toDouble() {
    return double.tryParse(this) ?? 0.0;
  }

  int toInt() {
    return int.tryParse(this) ?? 0;
  }

  Future<void> launchUrlString() async {
    final uri = Uri.parse(this);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }
}
