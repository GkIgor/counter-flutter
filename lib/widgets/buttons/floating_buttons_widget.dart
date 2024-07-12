import 'package:flutter/material.dart';
import 'package:myapp/widgets/states/theme_state.dart';

class IncrementButton extends StatelessWidget {
  final VoidCallback onPressed;
  const IncrementButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: ThemeState.instance,
      builder: (context, child) {
        return FloatingActionButton(
          onPressed: onPressed,
          tooltip: 'Increment',
          backgroundColor: ThemeState.instance.isDark ? Colors.blueGrey : null,
          // foregroundColor: Colors.white,
          child: const Icon(Icons.add),
        );
      },
    );
  }
}
