import 'package:flutter/material.dart';

class DesignPage extends StatefulWidget {
  @override
  State<DesignPage> createState() => _DesignPageState();
}

class _DesignPageState extends State<DesignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: GridView.count(
          crossAxisCount: 3,
          children: [
            InkWell(
              onTap: () {
                print('print');
                Navigator.of(context).pushNamed('/paginaantartica');
              },
              child: SizedBox(
                height: 500,
                child: Image(
                  image: AssetImage(
                      'model/images/rebranding/antartica/antartica1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('print');
                Navigator.of(context).pushNamed('/paginaantartica2');
              },
              child: SizedBox(
                height: 500,
                child: Image(
                  image: AssetImage(
                      'model/images/rebranding/antartica/antartica2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('print');
                Navigator.of(context).pushNamed('/paginaantartica3');
              },
              child: SizedBox(
                height: 500,
                child: Image(
                  image: AssetImage(
                      'model/images/rebranding/antartica/antartica3.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('print');
                Navigator.of(context).pushNamed('/paginasadia1');
              },
              child: SizedBox(
                height: 500,
                child: Image(
                  image: AssetImage('model/images/rebranding/sadia/sadia1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('print');
                Navigator.of(context).pushNamed('/paginasadia2');
              },
              child: SizedBox(
                height: 500,
                child: Image(
                  image: AssetImage('model/images/rebranding/sadia/sadia2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('print');
                Navigator.of(context).pushNamed('/paginasadia3');
              },
              child: SizedBox(
                height: 500,
                child: Image(
                  image: AssetImage('model/images/rebranding/sadia/sadia3.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('print');
                Navigator.of(context).pushNamed('/paginaadidas1');
              },
              child: SizedBox(
                height: 500,
                child: Image(
                  image:
                      AssetImage('model/images/rebranding/adidas/adidas1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('print');
                Navigator.of(context).pushNamed('/paginaadidas2');
              },
              child: SizedBox(
                height: 500,
                child: Image(
                  image:
                      AssetImage('model/images/rebranding/adidas/adidas2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('print');
                Navigator.of(context).pushNamed('/paginaadidas3');
              },
              child: SizedBox(
                height: 500,
                child: Image(
                  image:
                      AssetImage('model/images/rebranding/adidas/adidas3.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('print');
                Navigator.of(context).pushNamed('/paginadisney1');
              },
              child: SizedBox(
                height: 500,
                child: Image(
                  image:
                      AssetImage('model/images/rebranding/disney/disney1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('print');
                Navigator.of(context).pushNamed('/paginadisney2');
              },
              child: SizedBox(
                height: 500,
                child: Image(
                  image:
                      AssetImage('model/images/rebranding/disney/disney2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('print');
                Navigator.of(context).pushNamed('/paginadisney3');
              },
              child: SizedBox(
                height: 500,
                child: Image(
                  image:
                      AssetImage('model/images/rebranding/disney/disney3.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('print');
                Navigator.of(context).pushNamed('/paginaFriboi1');
              },
              child: SizedBox(
                height: 500,
                child: Image(
                  image:
                      AssetImage('model/images/rebranding/friboi/friboi1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('print');
                Navigator.of(context).pushNamed('/paginaFriboi2');
              },
              child: SizedBox(
                height: 500,
                child: Image(
                  image:
                      AssetImage('model/images/rebranding/friboi/friboi2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('print');
                Navigator.of(context).pushNamed('/paginaFriboi3');
              },
              child: SizedBox(
                height: 500,
                child: Image(
                  image:
                      AssetImage('model/images/rebranding/friboi/friboi3.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('print');
                Navigator.of(context).pushNamed('/paginaStone1');
              },
              child: SizedBox(
                height: 500,
                child: Image(
                  image: AssetImage('model/images/rebranding/stone/stone1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('print');
                Navigator.of(context).pushNamed('/paginaStone2');
              },
              child: SizedBox(
                height: 500,
                child: Image(
                  image: AssetImage('model/images/rebranding/stone/stone2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('print');
                Navigator.of(context).pushNamed('/paginaStone3');
              },
              child: SizedBox(
                height: 500,
                child: Image(
                  image: AssetImage('model/images/rebranding/stone/stone3.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('print');
                Navigator.of(context).pushNamed('/paginaIlustra');
              },
              child: SizedBox(
                height: 500,
                child: Image(
                  image: AssetImage('model/images/ilustracao/ilustra.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('print');
                Navigator.of(context).pushNamed('/paginaIlustra1');
              },
              child: SizedBox(
                height: 500,
                child: Image(
                  image: AssetImage('model/images/ilustracao/ilustra1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('print');
                Navigator.of(context).pushNamed('/paginaIlustra2');
              },
              child: SizedBox(
                height: 500,
                child: Image(
                  image: AssetImage('model/images/ilustracao/ilustra2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('print');
                Navigator.of(context).pushNamed('/paginaIlustra3');
              },
              child: SizedBox(
                height: 500,
                child: Image(
                  image: AssetImage('model/images/ilustracao/ilustra3.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('print');
                Navigator.of(context).pushNamed('/paginaIlustra4');
              },
              child: SizedBox(
                height: 500,
                child: Image(
                  image: AssetImage('model/images/ilustracao/ilustra4.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('print');
                Navigator.of(context).pushNamed('/paginaIlustra5');
              },
              child: SizedBox(
                height: 500,
                child: Image(
                  image: AssetImage('model/images/ilustracao/ilustra5.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ));
  }
}
