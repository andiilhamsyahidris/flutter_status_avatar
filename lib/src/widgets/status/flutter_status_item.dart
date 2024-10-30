import 'package:animated_emoji/animated_emoji.dart';
import 'package:flutter/material.dart';
import 'package:flutter_status_avatar/src/utils/config.dart';
import 'package:flutter_status_avatar/src/utils/const.dart';
import 'package:flutter_status_avatar/src/widgets/badge/flutter_status_badge.dart';

/// A class that provides widget for status item on [FlutterStatusBadge]
/// such as Sick, In a meeting, etc.
///
class FlutterStatusItem extends StatelessWidget {
  /// Status of items that taken from [Const.list]
  final Map<String, dynamic> item;

  const FlutterStatusItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedEmoji(item[Const.emojiKey]),
        SizedBox(width: getScreenWidth(12)),
        Text(item[Const.statusKey]),
        SizedBox(width: getScreenWidth(12)),
        Text(duration),
      ],
    );
  }

  String get duration {
    if (item[Const.durationKey] == null) {
      return '';
    }
    return '- ${item[Const.durationKey]}';
  }
}
