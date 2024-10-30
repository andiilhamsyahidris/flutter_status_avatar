import 'package:flutter/material.dart';
import 'package:flutter_status_avatar/src/widgets/badge/flutter_status_badge.dart';

/// A class that provides styling [FlutterStatusBadge]
/// such as [badgeColor], [borderRadius] etc.
class FlutterStatusBadgeStyle {
  /// Allows to set border radius to this [badgeContent].
  /// The default value is [BorderRadius.zero].
  final BorderRadius borderRadius;

  /// Background color of the badge.
  /// If [gradient] is not null, this property will be ignored.
  final Color badgeColor;

  /// Allows to set border side to this [badgeContent].
  /// The default value is [BorderSide.none].
  final BorderSide borderSide;

  const FlutterStatusBadgeStyle({
    this.borderRadius = BorderRadius.zero,
    this.badgeColor = Colors.white70,
    this.borderSide = BorderSide.none,
  });
}
