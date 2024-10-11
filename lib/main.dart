import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_demo/pages/home_screen.dart';

import 'package:shop_demo/pages/introduction_screen.dart';
import 'models/card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ShoppingCart(),
      builder: (context, child) => MaterialApp(
        home: const IntroductionScreen(),
        routes: {
          '/home': (context) => const HomeScreen(),
        },
      ),
    );
  }
}
