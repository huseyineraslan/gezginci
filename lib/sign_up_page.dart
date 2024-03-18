import 'package:flutter/material.dart';
import 'sign_up_form.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Üye Ol'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SignUpForm(),
      ),
    );
  }
}
