import 'package:fluent_ui/fluent_ui.dart';

import '../../utils/colors.dart';
import '../../utils/screen_width_breakpoints.dart';
import 'online_list_tile.dart';

class Online extends StatelessWidget {
  const Online({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isTabletOrSmaller = screenWidth < laptopWidth;

    if (isTabletOrSmaller) {
      return Expanded(child: _buildContent());
    }

    return _buildContent();
  }

  Container _buildContent() {
    return Container(
      width: 240,
      color: backgroundSecondary,
      child: ListView(
        controller: ScrollController(),
        children: const [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ONLINE — 4',
                  style: TextStyle(
                      color: channelsDefault,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
                SizedBox(height: 10),
                OnlineListTile(
                  imageUrl: 'https://picsum.photos/200/100?size=80',
                  username: 'Muhidin',
                  activity: '🎣 Mancing',
                ),
                SizedBox(height: 10),
                OnlineListTile(
                  imageUrl:
                      'https://cdn.discordapp.com/avatars/449940864576258049/28cf51b9af6e5a38c187ee13b8019b7d.webp?size=80',
                  username: 'Ganteng9',
                  activity: 'Playing War Thunder',
                ),
                SizedBox(height: 10),
                OnlineListTile(
                  imageUrl:
                      'https://cdn.discordapp.com/avatars/452122817169981440/0bb70fc5a94d036bd678251b412889b3.webp?size=32',
                  username: 'hary',
                ),
                SizedBox(height: 10),
                OnlineListTile(
                  imageUrl: 'https://picsum.photos/200/300?size=32',
                  username: 'HyoSeop',
                  activity: '💣 Playing with my nuclear button',
                  isAdmin: true,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'OFFLINE — 23',
                  style: TextStyle(
                      color: channelsDefault,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
                SizedBox(height: 10),
                OnlineListTile(
                  imageUrl: 'https://picsum.photos/200/100?size=80',
                  username: 'Muhidin',
                  activity: 'Mancing',
                  isOnline: false,
                ),
                SizedBox(height: 10),
                OnlineListTile(
                  imageUrl:
                      'https://cdn.discordapp.com/avatars/449940864576258049/28cf51b9af6e5a38c187ee13b8019b7d.webp?size=80',
                  username: 'Ganteng9',
                  activity: 'Playing War Thunder',
                  isOnline: false,
                ),
                SizedBox(height: 10),
                OnlineListTile(
                  imageUrl: 'https://picsum.photos/200/100?size=80',
                  username: 'Muhidin',
                  activity: 'Mancing',
                  isOnline: false,
                ),
                SizedBox(height: 10),
                OnlineListTile(
                  imageUrl:
                      'https://cdn.discordapp.com/avatars/449940864576258049/28cf51b9af6e5a38c187ee13b8019b7d.webp?size=80',
                  username: 'Ganteng9',
                  activity: 'Playing War Thunder',
                  isOnline: false,
                ),
                SizedBox(height: 10),
                OnlineListTile(
                  imageUrl: 'https://picsum.photos/200/100?size=80',
                  username: 'Muhidin',
                  activity: 'Mancing',
                  isOnline: false,
                ),
                SizedBox(height: 10),
                OnlineListTile(
                  imageUrl:
                      'https://cdn.discordapp.com/avatars/449940864576258049/28cf51b9af6e5a38c187ee13b8019b7d.webp?size=80',
                  username: 'Ganteng9',
                  activity: 'Playing War Thunder',
                  isOnline: false,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
