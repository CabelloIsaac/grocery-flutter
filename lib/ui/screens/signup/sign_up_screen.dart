import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery/ui/shared/auth_app_bar.dart';

import 'widgets/sign_up_body.dart';

class SignUpScreen extends StatelessWidget {
  static const String route = "/SignUpScreen";

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            const AuthAppBar(),
          ];
        },
        body: const SignUpBody(),
      ),
    );
  }
}
