import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sahithyolsav/config/colors.dart';
import 'package:sahithyolsav/route/route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: Insights()));
}

class Insights extends StatelessWidget {
  const Insights({super.key});
  @override
  Widget build(BuildContext context) {
    final themeData = ThemeData(colorScheme: lightColorScheme);
    initTheme(themeData);
    return MaterialApp.router(
      routerConfig: routeX,
      title: 'Sahitylosav',
      debugShowCheckedModeBanner: false,
      scrollBehavior: const MaterialScrollBehavior().copyWith(scrollbars: false),
      themeMode: ThemeMode.light,
      theme: themeData,
      darkTheme: ThemeData(colorScheme: darkColorScheme),
    );
  }
}
