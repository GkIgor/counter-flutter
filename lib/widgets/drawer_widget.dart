import 'package:flutter/material.dart';
import 'package:myapp/widgets/components/drawer_component.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: DrawerHeaderComponent()),
          ListTile(
            leading: const Icon(Icons.add),
            title: const Text('Contador'),
            onTap: () {
              // Navigator.pushNamed(context, '/counter');
            },
          ),
          const ListTile(
            leading: Icon(Icons.book),
            title: Text('Livros'),
          ),
          const ListTile(
            leading: Icon(Icons.music_note),
            title: Text('Músicas'),
          ),
          const ListTile(
            leading: Icon(Icons.movie),
            title: Text('Filmes'),
          ),
          const ListTile(
            leading: Icon(Icons.games),
            title: Text('Jogos'),
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configurações'),
          ),
          const ListTile(
            leading: Icon(Icons.info),
            title: Text('Sobre'),
          ),
        ],
      ),
    );
  }
}
