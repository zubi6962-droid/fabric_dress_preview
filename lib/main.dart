import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'models/user_preferences.dart';
import 'screens/main_screen.dart';

void main() => runApp(FabricPreviewApp());

class FabricPreviewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UserPreferences(),
      child: MaterialApp(
        title: 'Fabric Dress Preview AR',
        theme: ThemeData.dark(),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [Locale('en'), Locale('fa'), Locale('ar')],
        home: MainScreen(),
      ),
    );
  }
}
