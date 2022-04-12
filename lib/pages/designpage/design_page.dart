import 'dart:convert';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DesignPage extends StatefulWidget {
  @override
  _TesteState createState() => _TesteState();
}

class _TesteState extends State<DesignPage> {
  List imagens = [];
  ReadData() {
    DefaultAssetBundle.of(context)
        .loadString('lib/pages/designpage/images.json')
        .then((s) {
      setState(() {
        imagens = json.decode(s);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    ReadData();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    mediaQuery.size.height;
    mediaQuery.size.width;

    return Scaffold(
      body: Container(
          child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemCount: imagens.length,
              itemBuilder: (_, i) {
                return GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Scaffold(
                            body: Column(
                              children: [
                                SizedBox(
                                  child: Row(children: [
                                    SizedBox(
                                        height: mediaQuery.size.height * 0.11),
                                    SizedBox(
                                      width: 40,
                                      height: 50,
                                      child: Image(
                                        image: AssetImage(
                                            'model/images/logoo.png'),
                                      ),
                                    ),
                                    Text(
                                      'Be.Quinta',
                                      style: TextStyle(fontSize: 24),
                                    )
                                  ]),
                                ),
                                Container(
                                  width: mediaQuery.size.width,
                                  height: mediaQuery.size.height * 0.75,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(imagens[i]["image"])),
                                  ),
                                ),
                                TextButton.icon(
                                    label: Text(
                                      'Voltar',
                                      style: TextStyle(color: Colors.blueGrey),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(FontAwesomeIcons.arrowLeft,
                                        color: Colors.blueGrey)),
                              ],
                            ),
                          ))),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(imagens[i]["image"])),
                    ),
                  ),
                );
              })),
    );
  }
}
