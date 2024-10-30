import 'package:animated_emoji/animated_emoji.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_status_avatar/flutter_status_avatar.dart'
    as flutter_status_avatar;
import 'package:flutter_status_avatar/src/utils/config.dart';
import 'package:flutter_status_avatar/src/utils/const.dart';
import 'package:flutter_status_avatar/src/widgets/avatar/frame.dart';
import 'package:flutter_status_avatar/src/widgets/badge/flutter_status_badge.dart'
    as flutter_status_badge;
import 'package:flutter_status_avatar/src/widgets/badge/flutter_status_badge_style.dart';
import 'package:flutter_status_avatar/src/widgets/status/flutter_status_item.dart';

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
    this.style = const FlutterStatusBadgeStyle(),
    this.radius,
    this.child,
  });

  /// The color with which to fill the circle
  /// If a [backgroundColor] is not specified and [ThemeData.useMaterial3] is true
  final Color? backgroundColor;

  /// The background image of the circle
  /// If the avatar is have the user's initials, use [child] instead
  final ImageProvider<Object>? backgroundImage;

  /// Style of [FlutterStatusBadge] on the avatar
  final FlutterStatusBadgeStyle style;

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
    SizeConfig.init(context);

    /// See also
    /// * [Badge]
    return flutter_status_badge.FlutterStatusBadge(
      flutterBadgeStyle: widget.style,
      badgeContent: DropdownButtonHideUnderline(
        child: DropdownButton2(
          customButton: AnimatedEmoji(valueStatus[Const.emojiKey]),
          items: [
            ...Const.list.map(
              (item) => DropdownMenuItem(
                value: item,
                child: FlutterStatusItem(item: item),
              ),
            )
          ],
          onChanged: (value) {
            setState(() {
              if (value != null) valueStatus = value;
            });
          },
          dropdownStyleData: DropdownStyleData(
            width: getScreenWidth(300),
            padding: const EdgeInsets.symmetric(vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
            ),
            offset: const Offset(0, 8),
          ),
        ),
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
