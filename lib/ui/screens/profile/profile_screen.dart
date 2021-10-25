import 'package:flutter/material.dart';

import 'widgets/header_background.dart';
import 'widgets/profile_option.dart';
import 'widgets/user_info.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const HeaderBackground(),
        SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: const [
                SizedBox(height: 20),
                UserInfo(),
                SizedBox(height: 40),
                ProfileOption(
                  title: "Edit Profile",
                  icon: Icon(Icons.person),
                ),
                ProfileOption(
                  title: "Wishlist",
                  icon: Icon(Icons.favorite_border),
                ),
                ProfileOption(
                  title: "Address",
                  icon: Icon(Icons.event_note_outlined),
                ),
                Divider(),
                ProfileOption(
                  title: "Settings",
                  icon: Icon(Icons.settings),
                ),
                ProfileOption(
                  title: "Log Out",
                  icon: Icon(Icons.exit_to_app),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        )
      ],
    );
  }
}
