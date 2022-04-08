import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FriboiPage1 extends StatefulWidget {
  @override
  State<FriboiPage1> createState() => _FriboiPageState1();
}

class _FriboiPageState1 extends State<FriboiPage1> {
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
            image: AssetImage('model/images/rebranding/friboi/friboi1.png'),
            fit: BoxFit.cover,
          ),
          SizedBox(height: mediaQuery.size.height * 0.3),
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
