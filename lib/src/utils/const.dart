import 'package:animated_emoji/animated_emoji.dart';

class Const {
  static const String statusKey = 'status';
  static const String emojiKey = 'emoji';
  static const String durationKey = 'duration';

  static const List<Map<String, dynamic>> list = <Map<String, dynamic>>[
    {
      Const.statusKey: 'Update your status',
      Const.emojiKey: AnimatedEmojis.plusSign,
    },
    {
      Const.statusKey: 'Sick',
      Const.emojiKey: AnimatedEmojis.sick,
      Const.durationKey: 'Today'
    },
    {
      Const.statusKey: 'In a meeting',
      Const.emojiKey: AnimatedEmojis.pencil,
      Const.durationKey: '30 minutes'
    },
    {
      Const.statusKey: 'Out of office',
      Const.emojiKey: AnimatedEmojis.phoneOff,
      Const.durationKey: 'Today'
    }
  ];
}
