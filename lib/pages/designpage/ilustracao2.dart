import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Ilustracao2Page extends StatefulWidget {
  @override
  State<Ilustracao2Page> createState() => _IlustracaoPageState2();
}

class _IlustracaoPageState2 extends State<Ilustracao2Page> {
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
            image: AssetImage('model/images/ilustracao/ilustra2.png'),
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
