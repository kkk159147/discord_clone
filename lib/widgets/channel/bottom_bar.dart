import 'package:fluent_ui/fluent_ui.dart';

import '../../utils/colors.dart';
import '../global/avatar_with_online_status.dart';
import '../global/click_to_copy_with_tooltip.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(12),
      color: backgroundSecondaryAlt,
      child: Row(
        children: [
          const AvatarWithOnlineStatus(
            imageUrl: 'https://picsum.photos/200/300?size=32',
            username: 'Hary Suryanto',
            isOnline: true,
          ),
          const SizedBox(width: 10),
          const Expanded(
            child: ClickToCopyWithTooltip(
              textToCopy: 'HyoSeop#5500',
              description: 'Click to copy username',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'HyoSeop',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '#5500',
                    style: TextStyle(color: headerSecondary, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          IconButton(
              icon: const Icon(FluentIcons.microphone), onPressed: () {}),
          IconButton(icon: const Icon(FluentIcons.speakers), onPressed: () {}),
          IconButton(icon: const Icon(FluentIcons.settings), onPressed: () {}),
        ],
      ),
    );
  }
}
