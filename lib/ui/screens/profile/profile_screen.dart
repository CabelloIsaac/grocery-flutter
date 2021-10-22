import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Image.asset(
          "assets/images/profile-header.jpg",
          height: (width / 1.6),
          width: width,
          fit: BoxFit.cover,
        ),
        SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Row(
                  children: const [
                    CircleAvatar(
                      foregroundImage: NetworkImage(
                        "https://media-exp1.licdn.com/dms/image/C4E03AQHMf7V8vFCvIg/profile-displayphoto-shrink_200_200/0/1631201262406?e=1640217600&v=beta&t=o6JNttr4L0SZsvGXeUF_gwpGWdM4p2XsDXIh-lUPyas",
                      ),
                      radius: 40,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Isaac Cabello",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                const ProfileOption(
                  title: "Edit Profile",
                  icon: Icon(Icons.person),
                ),
                const ProfileOption(
                  title: "Wishlist",
                  icon: Icon(Icons.favorite_border),
                ),
                const ProfileOption(
                  title: "Address",
                  icon: Icon(Icons.event_note_outlined),
                ),
                const Divider(),
                const ProfileOption(
                  title: "Settings",
                  icon: Icon(Icons.settings),
                ),
                const ProfileOption(
                  title: "Log Out",
                  icon: Icon(Icons.exit_to_app),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class ProfileOption extends StatelessWidget {
  const ProfileOption({Key? key, required this.title, required this.icon})
      : super(key: key);

  final String title;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: Padding(
            padding: const EdgeInsets.only(right: 40),
            child: icon,
          ),
          label: Text(title),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(20),
            primary: Colors.white,
            onPrimary: Colors.black,
            alignment: Alignment.centerLeft,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
