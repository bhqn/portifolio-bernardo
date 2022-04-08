import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

class FormPage extends StatefulWidget {
  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final controllerName = TextEditingController();
  final controllerCompany = TextEditingController();
  final controllerSubject = TextEditingController();
  final controllerMessage = TextEditingController();
  final controllerToEmail = TextEditingController();
  Future sendEmail(
      {required String name,
      required String email,
      required String subject,
      required String company,
      required String message}) async {
    final serviceId = 'service_lb6txdk';
    final templateId = 'template_i6s1pd7';
    final userId = 'init("HsFKmYYWHM1DXDnts")';
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http.post(
      url,
      headers: {'content-Type': 'application/json'},
      body: {
        'service_id:': serviceId,
        'template_id': templateId,
        'use_id': userId,
        'template_params': {
          'user_name': name,
          'user_email': email,
          'user_subject': subject,
          'user_message': message,
          'user_company': company,
        }
      },
    );
    print(response.body);
  }

  Future lauchEmail({
    required String name,
    required String toEmail,
    required String subject,
    required String company,
    required String message,
  }) async {
    final url =
        'mailto:$toEmail?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull(message)}';
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  Widget buildTextField({
    required String title,
    required TextEditingController controller,
    int maxLines = 1,
  }) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          SizedBox(height: 8),
          TextField(
              maxLines: maxLines,
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              )),
          SizedBox(height: 16),
        ],
      );

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
                  'Contato',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w200,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(height: 25),
              Column(children: [
                buildTextField(
                    title: 'Nome', controller: controllerName, maxLines: 1),
                SizedBox(height: 15),
                /*buildTextField(
                    title: 'E-mail', controller: controllerToEmail, maxLines: 1),
                SizedBox(height: 15),
                */
                /*  buildTextField(
                    title: 'Empresa', controller: controllerCompany, maxLines: 1),
                SizedBox(height: 15),*/
                buildTextField(
                    title: 'Assunto',
                    controller: controllerSubject,
                    maxLines: 1),
                SizedBox(height: 15),
                buildTextField(
                    title: 'Menssagem',
                    controller: controllerMessage,
                    maxLines: 8),
                const SizedBox(height: 32),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                    minimumSize: Size.fromHeight(50),
                    textStyle: TextStyle(fontSize: 20),
                  ),
                  child: Text('enviar'),
                  onPressed: () => lauchEmail(
                    name: controllerName.text,
                    toEmail: 'bernardohquintanilha@gmail.com',
                    company: controllerCompany.text,
                    subject: controllerSubject.text,
                    message: controllerMessage.text,
                  ),
                ),
                const SizedBox(height: 32),
              ])
            ]),
          ),
        ),
      ]),
    );
  }
}
