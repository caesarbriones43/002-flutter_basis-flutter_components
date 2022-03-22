import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    "México",
    "Canadá",
    "Rusia",
    "Argentina",
    "Francia",
    "Colombia",
    "Estados Unidos",
    "Brasil",
    "Ucrania",
    "Peru",
    "Paraguay",
    "Honduras",
    "Guatemala"
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView1"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(options[index]),
                  leading: Icon(Icons.flag),
                  trailing: Icon(Icons.chevron_right),
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}
