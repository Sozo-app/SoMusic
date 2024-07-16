import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Icon(
              FluentIcons.grid_20_filled,
              size: 28,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(width: 5),
            Text(
              'Explore',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(
              FluentIcons.search_20_filled,
              size: 28,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              FluentIcons.settings_20_filled,
              size: 28,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Explore Page',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}
