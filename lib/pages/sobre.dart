import 'package:bernardo/components/sobre/widget/sobre_des_charts.dart';
import 'package:bernardo/components/sobre/widget/sobre_dev_charts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:url_launcher/url_launcher.dart';

class SobrePage extends StatefulWidget {
  @override
  State<SobrePage> createState() => _SobrePageState();
}

class _SobrePageState extends State<SobrePage> {
  void _openDialog(ctx) {
    showCupertinoDialog(
        context: ctx,
        builder: (_) => CupertinoAlertDialog(
              title: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                ),
                child: Text(
                  'Aprenda C e C++ - Funções, Alocação e Arquivos',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                  ),
                ),
              ),
              content: Image(
                fit: BoxFit.cover,
                image: AssetImage(
                  'model/images/certificadoC.jpg',
                ),
              ),
              actions: [
                // Close the dialog
                // You can use the CupertinoDialogAction widget instead
                CupertinoButton(
                    child: Text('Cancel'),
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    }),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 35),
              Text(
                'Sobre',
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w200,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 15),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Profissional graduado em Design Gráfico 2013, com experiência em  marketing digital, criação e desenvolvimento de sites, peças para mídias-sociais e branding. Comprometido e de fácil relacionamento, atualmente cursando Engenharia  da computação com foco em Desenvolvimento mobile utilizando Flutter como Framework principal.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Text(
                'Dados Pessoais',
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w200,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 15),
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    'Nome',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                  ),
                ),
                subtitle: Text(
                  'Bernardo Henrique Quintanilha Neto',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                indent: 15,
                endIndent: 15,
                color: Colors.black26,
              ),
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    'E-mail',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                  ),
                ),
                subtitle: Text(
                  'Bernardo_quintanilha@hotmail.com',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Divider(
                thickness: 1,
                indent: 15,
                endIndent: 15,
                color: Colors.black26,
              ),
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    'Telefone',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                  ),
                ),
                subtitle: Text(
                  '(21 97227-1203)',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                trailing: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.blueGrey[100]),
                    child: Icon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.black87,
                    ),
                    onPressed: () async {
                      const url =
                          "https://api.whatsapp.com/send?phone=5521972271203&text=Ol%C3%A1%2C%20viu%20seu%20Portf%C3%B3lio%20e%20gostaria%20de%20conversar%20%3B)";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Não logou :/';
                      }
                    }),
              ),
              Divider(
                thickness: 1,
                indent: 15,
                endIndent: 15,
                color: Colors.black26,
              ),
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    'Local',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                  ),
                ),
                subtitle: Text(
                  'Rio de Janeiro, Brasil',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                indent: 15,
                endIndent: 15,
                color: Colors.black26,
              ),
              SizedBox(height: 15),
              Text(
                'Formação',
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w200,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 15),
              ListTile(
                  title: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      'Designer Gráfico (concluido)',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w300,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  subtitle: Text(
                    'Universidade Veiga de Almeida',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  leading: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 15, 50, 0),
                    child: Text('2013'),
                  )),
              Divider(
                thickness: 1,
                indent: 15,
                endIndent: 15,
                color: Colors.black26,
              ),
              ListTile(
                  title: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      'Designer Gráfico (concluido)',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w300,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  subtitle: Text(
                    'Universidade Estácio de Sá',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  leading: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 15, 50, 0),
                    child: Text('2022'),
                  )),
              Divider(
                thickness: 1,
                indent: 15,
                endIndent: 15,
                color: Colors.black26,
              ),
              SizedBox(height: 15),
              Text(
                'Cursos Adicionais',
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w200,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 15),
              CupertinoButton(
                  color: Colors.blueGrey[50],
                  onPressed: () => _openDialog(context),
                  child: Text(
                    'Udemy - Aprenda C e C++, Funçoes, Alocação e Arquivamentos ',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  )),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
                child: Text(
                  'Criação de Apps Android/iOS/Web com Flutter - 5 cursos em 1 - Em Andamento',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  'Academia do Flutter - Em Andamento',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                indent: 15,
                endIndent: 15,
                color: Colors.black26,
              ),
              SizedBox(height: 15),
              Text(
                'Skills',
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w200,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 15),
              TabBar(
                indicatorColor: Colors.blueGrey,
                padding: EdgeInsets.symmetric(horizontal: 13),
                tabs: [
                  Tab(
                    child: Text(
                      'Desenvolvimento',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Designer',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 300,
                child: TabBarView(
                    children: <Widget>[DevChartsPage(), DesChartsPage()]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
