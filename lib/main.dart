import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoptex/providers/theme_provider.dart';
import 'package:shoptex/screens/home/home.dart';
import 'package:shoptex/utils/themes.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ThemeProvider()..initialThemeMode(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: context.read<ThemeProvider>().themeMode,
      home: const Home(),
    );
  }
}
