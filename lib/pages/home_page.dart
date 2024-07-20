import 'package:flutter/material.dart';
import 'package:myapp/widgets/drawer_widget.dart';
import 'package:myapp/widgets/switch_dark_theme.dart';
import '../widgets/buttons/floating_buttons_widget.dart';

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Counter Page',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SwitchDarkTheme()
          ],
        ),
      ),
      body: Center(
        child: GestureDetector(
          child: Text('$counter', style: const TextStyle(fontSize: 30)),
          onTap: () {
            setState(() {
              counter++;
            });
          },
          onLongPress: () {
            setState(() {
              counter = 0;
            });
          },
        ),
      ),
      floatingActionButton: IncrementButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}
