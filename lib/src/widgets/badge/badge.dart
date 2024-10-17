import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_status_avatar/flutter_status_avatar.dart'
    as flutter_status_avatar;
import 'package:flutter_status_avatar/src/widgets/badge/badge_style.dart';

/// A class that provides additional marker for [flutter_status_avatar.FlutterStatusAvatar]
/// Using [badges.Badge]
///
class Badge extends StatelessWidget {
  const Badge({
    super.key,
    this.badgeContent,
    this.badgeStyle = const BadgeStyle(),
    this.child,
  });

  /// The widget inside [Badge]
  final Widget? badgeContent;

  /// The class that provides styling [Badge]
  final BadgeStyle badgeStyle;

  /// The widget below this [Badge] in the tree
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    /// See also
    /// * [badges.Badge]
    return badges.Badge(
      badgeContent: badgeContent,
      badgeStyle: badges.BadgeStyle(
        shape: badgeStyle.shape,
        borderRadius: badgeStyle.borderRadius,
        badgeColor: badgeStyle.badgeColor,
        borderSide: badgeStyle.borderSide,
        elevation: badgeStyle.elevation,
        badgeGradient: badgeStyle.badgeGradient,
        borderGradient: badgeStyle.borderGradient,
        padding: badgeStyle.padding,
      ),
      child: child,
    );
  }
}
