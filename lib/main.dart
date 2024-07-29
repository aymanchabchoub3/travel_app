import 'package:flutter/material.dart';
import 'package:travel_app/screens/categories_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:travel_app/screens/category_trips_screen.dart'; //mte3 l5at rtl

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        //hthy men hna https://docs.flutter.dev/ui/accessibility-and-internationalization/internationalization tbedel el site el arbi
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar'), // English
      ],
      title: 'Trvael app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        hintColor: Colors.amber,
        fontFamily: "ElMessairi",
        textTheme: ThemeData.light().textTheme.copyWith(
              headlineSmall: const TextStyle(
                  color: Colors.blue,
                  fontSize: 24,
                  fontFamily: "ElMessiri",
                  fontWeight: FontWeight.bold),
              titleLarge: const TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontFamily: "ElMessiri",
                  fontWeight: FontWeight.bold),
            ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => const CategoriesScreen(), //home:CategoriesScreen()
        CategoryTripsScreen.screenRoute: (ctx) => const CategoryTripsScreen()
      },
      //bel named route safhat el kol fil main tarahom mnothma akthar
    );
  }
}
