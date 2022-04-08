import 'package:bernardo/pages/designpage/adidas_page1.dart';

import 'package:bernardo/pages/designpage/adidas_page2.dart';
import 'package:bernardo/pages/designpage/adidas_page3.dart';
import 'package:bernardo/pages/designpage/antartica_page.dart';
import 'package:bernardo/pages/designpage/antartica_page2.dart';
import 'package:bernardo/pages/designpage/antartica_page3.dart';
import 'package:bernardo/pages/designpage/disney_page1.dart';
import 'package:bernardo/pages/designpage/disney_page2.dart';
import 'package:bernardo/pages/designpage/disney_page3.dart';
import 'package:bernardo/pages/designpage/friboi_page1.dart';
import 'package:bernardo/pages/designpage/friboi_page2.dart';
import 'package:bernardo/pages/designpage/friboi_page3.dart';
import 'package:bernardo/pages/designpage/ilustracao.dart';
import 'package:bernardo/pages/designpage/ilustracao1.dart';
import 'package:bernardo/pages/designpage/ilustracao2.dart';
import 'package:bernardo/pages/designpage/ilustracao3.dart';
import 'package:bernardo/pages/designpage/ilustracao4.dart';
import 'package:bernardo/pages/designpage/ilustracao5.dart';
import 'package:bernardo/pages/designpage/sadia_page1.dart';
import 'package:bernardo/pages/designpage/sadia_page2.dart';
import 'package:bernardo/pages/designpage/sadia_page3.dart';
import 'package:bernardo/pages/designpage/stone_page1.dart';
import 'package:bernardo/pages/designpage/stone_page2.dart';
import 'package:bernardo/pages/designpage/stone_page3.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/': (_) => HomePage(),
        '/paginaantartica': (_) => AtantarticaPage(),
        '/paginaantartica2': (_) => AtantarticaPage2(),
        '/paginaantartica3': (_) => AtantarticaPage3(),
        '/paginasadia1': (_) => SadiaPage1(),
        '/paginasadia2': (_) => SadiaPage2(),
        '/paginasadia3': (_) => SadiaPage3(),
        '/paginaadidas1': (_) => AdidasPage1(),
        '/paginaadidas2': (_) => AdidasPage2(),
        '/paginaadidas3': (_) => AdidasPage3(),
        '/paginadisney1': (_) => DisneyPage1(),
        '/paginadisney2': (_) => DisneyPage2(),
        '/paginadisney3': (_) => DisneyPage3(),
        '/paginaFriboi1': (_) => FriboiPage1(),
        '/paginaFriboi2': (_) => FriboiPage2(),
        '/paginaFriboi3': (_) => FriboiPage3(),
        '/paginaStone1': (_) => StonePage1(),
        '/paginaStone2': (_) => StonePage2(),
        '/paginaStone3': (_) => StonePage3(),
        '/paginaIlustra': (_) => IlustracaoPage(),
        '/paginaIlustra1': (_) => Ilustracao1Page(),
        '/paginaIlustra2': (_) => Ilustracao2Page(),
        '/paginaIlustra3': (_) => Ilustracao3Page(),
        '/paginaIlustra4': (_) => Ilustracao4Page(),
        '/paginaIlustra5': (_) => Ilustracao5Page(),
      },
    );
  }
}
