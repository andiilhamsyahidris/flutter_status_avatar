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

  final Color? backgroundColor;
  final ImageProvider<Object>? backgroundImage;
  final double? radius;
  final Widget? child;

  @override
  State<FlutterStatusAvatar> createState() => _FlutterStatusAvatarState();
}

class _FlutterStatusAvatarState extends State<FlutterStatusAvatar> {
  Map<String, dynamic> valueStatus = Const.list.first;

  @override
  Widget build(BuildContext context) {
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
