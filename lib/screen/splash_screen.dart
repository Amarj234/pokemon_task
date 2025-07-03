import 'package:flutter/material.dart';
import 'dart:async';

import 'package:pokemon_card_list/routes/app_routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      AppRoutes.router.go(AppRoutes.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //  Image.asset('assets/images/pokemon_logo.png', height: 120),
            const SizedBox(height: 20),
            const CircularProgressIndicator(),
            const SizedBox(height: 12),
            const Text(
              'Loading Pokémon Cards...',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
