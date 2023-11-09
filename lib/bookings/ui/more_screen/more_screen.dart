import 'package:flutter/material.dart';

import '../../../common/ui/auth_screens/components/appbar_auth.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: appBarAuth(title: "المزيد", context: context),
      body: Center(
        child: Text("MoreScreen"),
      ),
    );
  }
}