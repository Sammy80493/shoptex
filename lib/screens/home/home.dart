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
    return Scaffold(
      appBar: AppBar(
        actions: [
          Switch.adaptive(
            value: context.read<ThemeProvider>().isDarkMode,
            onChanged: (value) {
              context.read<ThemeProvider>().toggleTheme(value);
            },
          )
        ],
      ),
    );
  }
}
