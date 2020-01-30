import 'package:flutter/material.dart';
import 'package:smarthyco/src/styles/text_style_sheet.dart';
import 'package:smarthyco/src/styles/widget_style_sheet.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.greenAccent,
          alignment: Alignment.center,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              logo(size),
              form(size),
            ],
          ),
        ),
      ),
    );
  }

  Container logo(Size size) {
    return Container(
      child: Image.asset(
        'assets/logo/logo.png',
        height: size.height * 0.25,
      ),
    );
  }

  Form form(Size size) {
    return Form(
      child: Column(
        children: <Widget>[
          emailForm(size),
          passwordForm(size),
          loginButton(size),
          registerButton(size),
        ],
      ),
    );
  }

  Container emailForm(Size size) {
    return Container(
      width: size.width * 0.9,
      child: TextFormField(
        controller: _emailController,
        decoration: const InputDecoration(
          hintText: 'Masukkan email',
        ),
      ),
    );
  }

  Container passwordForm(Size size) {
    return Container(
      width: size.width * 0.9,
      child: TextFormField(
        controller: _passwordController,
        decoration: const InputDecoration(
          hintText: 'Masukkan kata sandi',
        ),
      ),
    );
  }

  Container loginButton(Size size) {
    return Container(
      width: size.width * 0.75,
      child: FlatButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/main');
        },
        child: const Text(
          'Masuk',
          style: TSS.mdPrimeBold,
        ),
        shape: WSS.roundedBorder(20, WSS.borderGreen),
        color: Colors.white,
        highlightColor: Colors.green[100],
      ),
    );
  }

  Container registerButton(Size size) {
    return Container(
      width: size.width * 0.75,
      child: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, '/register');
        },
        child: const Text(
          'Daftar',
          style: TSS.mdWhiteBold,
        ),
        shape: WSS.roundedBorder(20, WSS.noBorder),
        color: Colors.green,
        highlightColor: Colors.white30,
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
