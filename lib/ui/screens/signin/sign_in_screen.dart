import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery/ui/shared/auth_app_bar.dart';

import 'widgets/sign_in_body.dart';

class SignInScreen extends StatelessWidget {
  static const String route = "/SignInScreen";

  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            const AuthAppBar(),
          ];
        },
        body: const SignInBody(),
      ),
    );
  }
}
