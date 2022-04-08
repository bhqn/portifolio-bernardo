import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          TextButton.icon(
              style: ButtonStyle(),
              label: Text(
                'Linkedin',
                style: TextStyle(color: Colors.blueGrey),
              ),
              onPressed: () async {
                const url =
                    "https://www.linkedin.com/in/bernardo-quintanilha-0baa84a4/  ";
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Não logou :/';
                }
              },
              icon: Icon(FontAwesomeIcons.linkedin, color: Colors.blueGrey)),
          TextButton.icon(
              label: Text(
                'Behance',
                style: TextStyle(color: Colors.blueGrey),
              ),
              onPressed: () async {
                const url = "https://www.behance.net/bernardoquint";
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Não logou :/';
                }
              },
              icon: Icon(FontAwesomeIcons.behance, color: Colors.blueGrey)),
          TextButton.icon(
              label: Text(
                'Instagram',
                style: TextStyle(color: Colors.blueGrey),
              ),
              onPressed: () async {
                const url = "https://www.instagram.com/be.quinta";
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Não logou :/';
                }
              },
              icon: Icon(FontAwesomeIcons.instagram, color: Colors.blueGrey)),
          TextButton.icon(
              label: Text(
                'GitHub',
                style: TextStyle(color: Colors.blueGrey),
              ),
              onPressed: () async {
                const url = "https://github.com/bhqn";
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Não logou :/';
                }
              },
              icon: Icon(FontAwesomeIcons.github, color: Colors.blueGrey)),
          TextButton.icon(
              label: Text(
                'Whatsapp',
                style: TextStyle(color: Colors.blueGrey),
              ),
              onPressed: () async {
                const url =
                    "https://api.whatsapp.com/send?phone=5521972271203&text=Ol%C3%A1%2C%20viu%20seu%20Portf%C3%B3lio%20e%20gostaria%20de%20conversar%20%3B)";
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Não logou :/';
                }
              },
              icon: Icon(Icons.whatsapp, color: Colors.blueGrey)),
          SizedBox(
            height: 300,
          ),
          TextButton.icon(
              label: Text(
                'Voltar',
                style: TextStyle(color: Colors.blueGrey),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_left, color: Colors.blueGrey)),
        ],
      ),
    ));
  }
}
