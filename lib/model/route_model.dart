import 'package:flutter/material.dart';

class RouteModel {
  final int? id;
  final String? name;
  final String? svg;
  final String? lightSvg;
  final String? darkSvg;
  final String? routeName;
  final Widget? widget;
  final IconData? icon;
  final IconData? filledIcon;
  final IconData? lightIcon;

  RouteModel({
    this.id,
    this.name,
    this.svg,
    this.lightSvg,
    this.darkSvg,
    this.routeName,
    this.widget,
    this.icon,
    this.filledIcon,
    this.lightIcon,
  });
}
