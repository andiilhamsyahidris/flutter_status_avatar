import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_status_avatar/flutter_status_avatar.dart'
    as flutter_status_avatar;

/// A class that provides additional marker for [flutter_status_avatar.FlutterStatusAvatar]
/// Using [badges.Badge]
///
class FlutterStatusBadge extends StatelessWidget {
  const FlutterStatusBadge({
    super.key,
    this.badgeContent,
    this.flutterBadgeStyle =
        const flutter_status_avatar.FlutterStatusBadgeStyle(),
    this.child,
  });

  /// The widget inside [FlutterStatusBadge]
  final Widget? badgeContent;

  /// The class that provides styling [FlutterStatusBadge]
  final flutter_status_avatar.FlutterStatusBadgeStyle flutterBadgeStyle;

  /// The widget below this [FlutterStatusBadge] in the tree
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    /// See also
    /// * [badges.Badge]
    ///
    return badges.Badge(
      position: badges.BadgePosition.bottomEnd(),
      badgeContent: badgeContent,
      badgeStyle: badges.BadgeStyle(
        borderRadius: flutterBadgeStyle.borderRadius,
        badgeColor: flutterBadgeStyle.badgeColor,
        borderSide: flutterBadgeStyle.borderSide,
      ),
      child: child,
    );
  }
}
