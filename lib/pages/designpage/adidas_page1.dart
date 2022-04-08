import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore: import_of_legacy_library_into_null_safe

class AdidasPage1 extends StatefulWidget {
  @override
  State<AdidasPage1> createState() => _AdidasaPageState1();
}

class _AdidasaPageState1 extends State<AdidasPage1> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    mediaQuery.size.height;
    mediaQuery.size.width;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          SizedBox(
            width: mediaQuery.size.width,
            child: Row(children: [
              SizedBox(
                width: 40,
                height: 40,
                child: Image(
                  image: AssetImage('model/images/logoo.png'),
                ),
              ),
              Text(
                'Be.Quinta',
                style: TextStyle(fontSize: 24),
              )
            ]),
          ),
          Image(
            width: mediaQuery.size.width,
            image: AssetImage('model/images/rebranding/adidas/adidas1.png'),
            fit: BoxFit.cover,
          ),
          SizedBox(height: mediaQuery.size.height * 0.2),
          TextButton.icon(
              label: Text(
                'Voltar',
                style: TextStyle(color: Colors.blueGrey),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(FontAwesomeIcons.arrowLeft, color: Colors.blueGrey)),
        ],
      ),
    );
  }
}
