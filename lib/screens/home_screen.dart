import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter'),
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => const ListTile(
                  title: Text("Route"),
                  leading: Icon(Icons.flag_circle_rounded),
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: 100));
  }
}
