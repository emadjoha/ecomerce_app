import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}
// Video number 22 https://www.youtube.com/watch?v=Cckbf-0Qg9k&list=PLmnT6naTGy2SC82FMSCrvZNogg5T1H7iF&index=22 47:43
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

