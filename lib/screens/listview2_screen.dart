import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

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
          title: const Text("ListView2"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(options[index]),
                  leading: const Icon(
                    Icons.flag,
                    color: Colors.indigo,
                  ),
                  trailing:
                      const Icon(Icons.chevron_right, color: AppTheme.primary),
                  onTap: () {
                    final country = options[index];
                    print(country);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}
