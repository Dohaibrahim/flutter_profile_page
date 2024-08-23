import 'package:flutter/material.dart';
import 'package:flutter_profile/models/user.dart';

import 'views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(user: User(name: "dan",bio: "this is dan", nameID: "dan10" , image: "https://i.pinimg.com/736x/db/3a/62/db3a623acc8396fb285ec899ad01cd10.jpg", numberOfFollowers: 10, numberOfFollowing: 200), ),
    );
  }
}
