import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        CircleAvatar(
          foregroundImage: CachedNetworkImageProvider(
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
    );
  }
}
