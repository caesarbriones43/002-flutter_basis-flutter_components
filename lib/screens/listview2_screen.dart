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
    "Guatemalale"
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.indigo,
          title: const Text("ListView1"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(options[index]),
                  leading: const Icon(
                    Icons.flag,
                    color: Colors.indigo,
                  ),
                  trailing:
                      const Icon(Icons.chevron_right, color: Colors.indigo),
                  onTap: () {
                    final country = options[index];
                    print(country);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}
