import 'package:flutter/material.dart';
import 'package:tanam_kota/src/resources/spacing.dart';
import 'package:tanam_kota/src/styles/text_style_sheet.dart';
import 'package:tanam_kota/src/styles/widget_style_sheet.dart';
import 'package:tanam_kota/src/widgets/custom_app_bar.dart';

class RegisterScreen extends StatefulWidget {
  @override
  RegisterScreenState createState() => RegisterScreenState();
}

class RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
        backgroundColor: Colors.greenAccent,
        title: 'Daftar',
        isCenter: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.greenAccent,
          alignment: Alignment.center,
          height: size.height,
          child: form(size),
        ),
      ),
    );
  }

  Form form(Size size) {
    return Form(
      child: Column(
        children: <Widget>[
          nameForm(size),
          emailForm(size),
          passwordForm(size),
          phoneForm(size),
          Spacing.vertical30,
          registerButton(size),
        ],
      ),
    );
  }

  Container nameForm(Size size) {
    return Container(
      width: size.width * 0.9,
      child: TextFormField(
        controller: _nameController,
        decoration: const InputDecoration(
          hintText: 'Masukkan email',
        ),
      ),
    );
  }

  Container emailForm(Size size) {
    return Container(
      width: size.width * 0.9,
      child: TextFormField(
        controller: _emailController,
        keyboardType: TextInputType.emailAddress,
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
        obscureText: true,
        decoration: const InputDecoration(
          hintText: 'Masukkan kata sandi',
        ),
      ),
    );
  }

  Container phoneForm(Size size) {
    return Container(
      width: size.width * 0.9,
      child: TextFormField(
        controller: _phoneController,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          hintText: 'Masukkan email',
        ),
      ),
    );
  }

  Container registerButton(Size size) {
    return Container(
      width: size.width * 0.75,
      child: FlatButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/main');
        },
        child: const Text(
          'Daftar',
          style: TSS.mdWhiteBold,
        ),
        shape: WSS.roundedBorder(20, WSS.noBorderSide),
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
