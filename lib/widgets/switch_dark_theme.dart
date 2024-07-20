import 'package:flutter/material.dart';
import 'package:myapp/states/theme_state.dart';

class SwitchDarkTheme extends StatelessWidget {
  const SwitchDarkTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: ThemeState.instance,
        builder: (context, child) {
          return Switch(
            value: ThemeState.instance.isDark,
            onChanged: (value) {
              ThemeState.instance.changeTheme();
            },
            activeColor: Colors.blueGrey,
            activeTrackColor: Colors.blueGrey,
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: Colors.white70,
          );
        });
  }
}
