import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album,
              color: AppTheme.primary,
            ),
            title: Text("Cillum dolor nisi consectetur"),
            subtitle: Text(
                "In fugiat sit cupidatat nostrud tempor ea aute quis non do cillum esse.I"),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text("Cancel"),
                ),
                TextButton(onPressed: () {}, child: const Text("Ok"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
