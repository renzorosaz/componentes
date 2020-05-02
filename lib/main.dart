
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';


//import 'package:componentes/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

      return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en','EN'), // English
        const Locale('es','ES'), // Hebrew 
    ],
      //home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),

      onGenerateRoute: (RouteSettings settings){

        print('ruta llamada: ${settings.name}');

        return MaterialPageRoute(
          builder:(BuildContext context)=>AlertPage()
        );
      },

    );
  }


}