// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoptex/providers/theme_provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        actions: const [
          // Switch.adaptive(
          //   value: context.read<ThemeProvider>().isDarkMode,
          //   onChanged: (value) {
          //     context.read<ThemeProvider>().toggleTheme(value);
          //   },
          // )
        ],
      ),
      body: Center(
        child: Switch.adaptive(
          value: themeProvider.isDarkMode,
          onChanged: (value) {
            themeProvider.setTheme(value);
          },
        ),
      ),
    );
  }
}
