// ignore_for_file: avoid_redundant_argument_values

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:icodeforyou_package/icodeforyou_package.dart';
import 'package:template_flutter_v324/src/src.dart';

class ExampleHomeScreen extends StatefulWidget {
  const ExampleHomeScreen({required this.title, super.key});

  final String title;

  @override
  State<ExampleHomeScreen> createState() => _MyHomeScreen();
}

class _MyHomeScreen extends ObservingStatefulWidget<ExampleHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.settings), // Gear icon
            onPressed: _showThemeSelection,
          ),
        ],
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: _body(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //context.read<ThemeModeCubit>().toggleBrightness();
        },
        tooltip: null,
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _body(BuildContext context) {
    return const Center(
      child: Text('HI'),
    );
  }

  void _showThemeSelection() {
    if (kIsWeb) {
      showDialog<void>(
        context: context,
        builder: (context) {
          return Stack(
            // Ensure it doesn't cover the whole screen
            children: [
              Positioned(
                top: AppBar().preferredSize.height,
                right: 5,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 200,
                  ), // Control the width of the modal
                  child: const ThemeSettingWidget(), // Your widget, untouched
                ),
              ),
            ],
          );
        },
      );
    } else {
      Navigator.push(
        context,
        CupertinoPageRoute<Widget>(
          builder: (context) => const SettingsPage(),
        ),
      );
    }
  }
}
