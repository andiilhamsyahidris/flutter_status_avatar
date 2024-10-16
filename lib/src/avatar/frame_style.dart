import 'package:flutter/material.dart';
import 'package:flutter_status_avatar/flutter_status_avatar.dart'
    as flutter_status_avatar;

/// This is a set of frame style that you can use for your [flutter_status_avatar.FlutterStatusAvatar]
/// Frame style provides to set min radius, max radius, background color, etc.

class FrameStyle {
  /// allow you to set size frame
  /// Default value is [8]
  final double? size;

  /// allow you to set background color
  final Color? backgroundColor;

  const FrameStyle({
    this.size = 8,
    this.backgroundColor,
  });
}
