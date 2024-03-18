import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Kullanıcı Adı',
            ),
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return 'Lütfen kullanıcı adınızı girin.';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Şifre',
            ),
            obscureText: true,
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return 'Lütfen şifrenizi girin.';
              }
              return null;
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState?.validate() ?? false) {

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Üye kaydı başarıyla tamamlandı!')),
                );
              }
            },
            child: Text('Üye Ol'),
          ),
        ],
      ),
    );
  }
}
