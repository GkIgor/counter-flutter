import 'package:flutter/material.dart';
import 'package:myapp/home_page.dart';
import 'package:myapp/pages/login_page.dart';
import 'package:myapp/widgets/states/theme_state.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: ThemeState.instance,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
              useMaterial3: false,
              primarySwatch: Colors.blue,
              brightness: ThemeState.instance.isDark
                  ? Brightness.dark
                  : Brightness.light,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            debugShowCheckedModeBanner: false,
            home: const LoginPage(),
          );
        });
  }
}
