import 'package:flutter/material.dart';

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
