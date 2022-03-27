import 'package:flutter/material.dart';
// import 'package:flutter_components/screens/screen.dart';

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
            itemBuilder: (context, index) => ListTile(
                  title: const Text("Route"),
                  leading: const Icon(Icons.flag_circle_rounded),
                  onTap: () {
                    // final route = MaterialPageRoute(
                    //     builder: (context) => const ListView1Screen());

                    // Navigator.push(context, route);

                    Navigator.pushNamed(context, 'card2');
                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: 100));
  }
}
