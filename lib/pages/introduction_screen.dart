// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 140),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 1. image
            Image.asset("lib/images/logo.png", width: 300, height: 300),
            SizedBox(height: 50),
            // 2, title
            Text(
              "Dji Mavic Air",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            // 3. subtitle
            Text(
              textAlign: TextAlign.center,
              "DJI 大疆创新，致力于成为持续推动人类进步的科技公司。",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(height: 30),
            // 4. button
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/home"),
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  "Get Started",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
