import 'package:flutter/material.dart';
import 'package:smarthyco/src/resources/spacing.dart';
import 'package:smarthyco/src/styles/text_style_sheet.dart';
import 'package:smarthyco/src/styles/widget_style_sheet.dart';
import 'package:smarthyco/src/widgets/custom_app_bar.dart';

class RegisterScreen extends StatefulWidget {
  @override
  RegisterScreenState createState() => RegisterScreenState();
}

class RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
        backgroundColor: Colors.white,
        title: 'Daftar',
        isCenter: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.greenAccent,
          alignment: Alignment.center,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              form(size),
            ],
          ),
        ),
      ),
    );
  }

  Form form(Size size) {
    return Form(
      child: Column(
        children: <Widget>[
          emailForm(size),
          passwordForm(size),
          Spacing.vertical30,
          loginButton(size),
        ],
      ),
    );
  }

  Container emailForm(Size size) {
    return Container(
      width: size.width * 0.9,
      child: TextFormField(
        controller: emailController,
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
        controller: passwordController,
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
          //
        },
        child: const Text(
          'Daftar',
          style: TSS.mdPrimeBold,
        ),
        shape: WSS.roundedBorder(20, WSS.borderGreen),
        color: Colors.white,
        highlightColor: Colors.green[100],
      ),
    );
  }
}
