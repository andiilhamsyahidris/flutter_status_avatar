import 'package:flutter/material.dart';

class Frame extends StatefulWidget {
  const Frame({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<Frame> createState() => _FrameState();
}

class _FrameState extends State<Frame> {
  @override
  Widget build(BuildContext context) {
    return _getFrame();
  }

  Widget _getFrame() {
    return CircleAvatar();
  }
}
