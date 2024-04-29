import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoptex/providers/theme_provider.dart';
import 'package:shoptex/screens/home/home.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider()..initialThemeMode(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: themeProvider.setupTheme(themeProvider.getThemeStatus, context),
      theme: themeProvider.themeSetup(themeProvider.themeStatus),
      // darkTheme: themeProvider.themeSetup(themeProvider.themeStatus),
      // themeMode: ThemeMode.system,
      home: const Home(),
    );
  }
}
