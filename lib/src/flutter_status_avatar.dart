import 'package:animated_emoji/animated_emoji.dart';
import 'package:flutter/material.dart';
import 'package:flutter_status_avatar/flutter_status_avatar.dart'
    as flutter_status_avatar;
import 'package:flutter_status_avatar/src/utils/const.dart';
import 'package:flutter_status_avatar/src/widgets/avatar/frame.dart';
import 'package:flutter_status_avatar/src/widgets/badge/badge.dart' as badge;

///
/// A widget that provides avatar with badge to display online status.
///
/// It provides several status such as sick, in a meeting and out of office
/// with duration in every status. Duration will be in 30 minutes, 1 hour and 24 hour
///
/// The [flutter_status_avatar.FlutterStatusAvatar] widget allows to implement online status in profile avatar.
///

class FlutterStatusAvatar extends StatefulWidget {
  const FlutterStatusAvatar({
    super.key,
    this.backgroundColor,
    this.backgroundImage,
    this.radius,
    this.child,
  });

  /// The color with which to fill the circle
  /// If a [backgroundColor] is not specified and [ThemeData.useMaterial3] is true
  final Color? backgroundColor;

  /// The background image of the circle
  /// If the avatar is have the user's initials, use [child] instead
  final ImageProvider<Object>? backgroundImage;

  /// The size of the avatar, expressed as the radius
  /// If [radius] is specified, then neither [minRadius] nor [maxRadius] is specified
  final double? radius;

  /// The widget below this widget in the tree
  /// Typically a [Text] widget. If the avatar is to have an image, use [backgroundImage] instead
  final Widget? child;

  @override
  State<FlutterStatusAvatar> createState() => _FlutterStatusAvatarState();
}

class _FlutterStatusAvatarState extends State<FlutterStatusAvatar> {
  Map<String, dynamic> valueStatus = Const.list.first;

  @override
  Widget build(BuildContext context) {
    /// See also
    /// * [Badge]
    return badge.Badge(
      badgeContent: DropdownButton(
        value: Const.list.first,
        items: Const.list.map<DropdownMenuItem<Map<String, dynamic>>>(
          (emoji) {
            return DropdownMenuItem(
              value: emoji,
              child: ListTile(
                leading: AnimatedEmoji(emoji[Const.emojiKey]),
                title: Text(emoji[Const.statusKey]),
              ),
            );
          },
        ).toList(),
        onChanged: (value) {
          setState(() {
            if (value != null) valueStatus = value;
          });
        },
      ),
      child: Frame(
        backgroundColor: widget.backgroundColor,
        backgroundImage: widget.backgroundImage,
        radius: widget.radius,
        child: widget.child,
      ),
    );
  }
}
