import 'package:flutter/material.dart';

import 'login_ui.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  Main({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login_UI(),
    );
  }
}
