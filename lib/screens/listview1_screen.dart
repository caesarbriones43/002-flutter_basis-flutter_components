import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const ["México", "Canadá", "Rusia", "Argentina"];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView1"),
        ),
        body: ListView(
          children: [
            ...options
                .map((country) => ListTile(
                      leading: const Icon(Icons.chevron_right_outlined),
                      subtitle: const Text("Subtitle"),
                      title: Text(country),
                      trailing: const Icon(Icons.settings),
                    ))
                .toList(),
          ],
        ));
  }
}
