import 'package:flutter/material.dart';
import 'package:flutter_status_avatar/flutter_status_avatar.dart'
    as flutter_status_avatar;

///
/// A class that provides frame avatar for [flutter_status_avatar.FlutterStatusAvatar]
/// Using [CircleAvatar] for display the frame
///
class Frame extends StatelessWidget {
  const Frame({
    super.key,
    this.backgroundColor,
    this.backgroundImage,
    this.radius,
    this.minRadius,
    this.maxRadius,
    this.child,
  });

  /// The color with which to fill the circle. Changing the background color
  /// will cause the avatar to animate to the new color
  ///
  /// If a [backgroundColor] is not specified and [ThemeData.useMaterial3] is true,
  final Color? backgroundColor;

  /// The background image of the circle. Changing the background image
  /// will cause the avatar to animate to the new image
  ///
  /// If the avatar is to have the user's initials, use [child] instead.
  final ImageProvider<Object>? backgroundImage;

  /// The size of the avatar, expressed as the radius
  ///
  /// if [radius] is specified, then neither [minRadius] nor [maxRadius] may be specified.
  final double? radius;

  /// The minimum size of the avatar, expressed as the radius
  ///
  /// If [minRadius] is specified, then [radius] must not also be specified
  /// Defaults to zero
  final double? minRadius;

  /// The maximum size of the avatar, expressed as the radius
  ///
  /// If [maxRadius] is specified, then [radius] must not also be specified
  /// Defaults to [double.infinity]
  final double? maxRadius;

  /// The widget below this widget in the tree
  ///
  /// Typically a [Text] widget. If the avatar is to have an image, use [backgroundImage] instead
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return _getFrame();
  }

  Widget _getFrame() {
    /// See also
    /// * [CircleAvatar]
    ///
    return CircleAvatar(
      backgroundColor: backgroundColor,
      backgroundImage: backgroundImage,
      minRadius: minRadius,
      maxRadius: maxRadius,
      child: child,
    );
  }
}
