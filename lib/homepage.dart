import 'package:bernardo/components/sobre/Nome_Container.dart';
import 'package:bernardo/drawer.dart';
import 'package:bernardo/pages/design_page.dart';

import 'package:bernardo/pages/dev_page.dart';
import 'package:bernardo/pages/form_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

enum PopupMenuPages { antartica_page }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    mediaQuery.size.height;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.blueGrey),
          title: Text(
            'Portifólio',
            style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 30,
                fontWeight: FontWeight.w300),
          ),
          backgroundColor: Colors.blueGrey[100],
          elevation: 0,
        ),
        drawer: Drawer(
          child: DrawerPage(),
        ),
        body: Container(
          color: Colors.blueGrey[100],
          child: Column(
            children: [
              Container(
                height: mediaQuery.size.height * 0.15,
              ),
              Stack(
                clipBehavior: Clip.none,
                alignment: AlignmentDirectional.topCenter,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        width: double.maxFinite,
                        height: mediaQuery.size.height * 0.7,
                        child: Column(children: [
                          SizedBox(
                            height: 75,
                          ),
                          TabBar(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            indicatorColor: Colors.blueGrey,
                            tabs: <Widget>[
                              Tab(
                                child: Text(
                                  'Sobre',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'Dev',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'Design',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'Contato',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Expanded(
                            child: TabBarView(
                              children: <Widget>[
                                NomeContainer(),
                                DevPage(),
                                DesignPage(),
                                FormPage()
                              ],
                            ),
                          ),
                        ])),
                  ),
                  Positioned(
                    bottom: 420,
                    child: Center(
                      child: CircleAvatar(
                        radius: 65,
                        backgroundImage:
                            AssetImage('model/images/bernardo.png'),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
