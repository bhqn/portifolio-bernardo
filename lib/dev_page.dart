import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DevPage extends StatefulWidget {
  @override
  State<DevPage> createState() => _DevPageState();
}

class _DevPageState extends State<DevPage> {
  final ButtonStyle style = ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: ListView(children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(children: [
              SizedBox(height: 25),
              Center(
                child: Text(
                  'Aplicações',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w200,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(height: 25),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    style: style,
                    onPressed: () async {
                      const url = "https://tropicocriativo.com.br";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Não logou :/';
                      }
                    },
                    child: Text('Tropico Criativo')),
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    style: style,
                    onPressed: () async {
                      const url = "https://casadaloucura.com.br";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Não logou :/';
                      }
                    },
                    child: Text('Casa da loucura ')),
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    style: style,
                    onPressed: () async {
                      const url = "https://uhsbrazil.com.br";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Não logou :/';
                      }
                    },
                    child: Text('Uhs Brazil')),
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    style: style,
                    onPressed: () async {
                      const url = "https://renissan.com.br";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Não logou :/';
                      }
                    },
                    child: Text('Renissan Auto peças')),
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    style: style,
                    onPressed: () async {
                      const url = "https://github.com/bhqn/contatdor_flutter";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Não logou :/';
                      }
                    },
                    child: Text('Contador Flutter')),
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    style: style,
                    onPressed: () async {
                      const url = "https://github.com/bhqn/contatdor_flutter";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Não logou :/';
                      }
                    },
                    child: Text('Login Page Flutter')),
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    style: style,
                    onPressed: () async {
                      const url = "https://github.com/bhqn/projeto-pokedex";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Não logou :/';
                      }
                    },
                    child: Text('RGB Page Javascript')),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}
