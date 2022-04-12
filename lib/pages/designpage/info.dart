import 'package:flutter/material.dart';

class InfoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Text(
                '//Nome',
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w200,
                  fontSize: 22,
                ),
              ),
            ),
            subtitle: Text(
              'Bernardo Henrique Quintanilha Neto',
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w400,
                fontSize: 18,
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
        ],
      ),
    );
  }
}
