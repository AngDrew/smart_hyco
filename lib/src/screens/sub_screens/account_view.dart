import 'package:flutter/material.dart';
import 'package:tanam_kota/src/resources/spacing.dart';
import 'package:tanam_kota/src/styles/text_style_sheet.dart';
import 'package:tanam_kota/src/styles/widget_style_sheet.dart';

import 'destination.dart';

class AccountView extends StatefulWidget {
  const AccountView({Key key, this.destination}) : super(key: key);

  final Destination destination;

  @override
  _AccountViewState createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: Spacing.horizontalSymetric10,
      child: Column(
        children: <Widget>[
          accountForm(),
          Spacing.vertical10,
          buttons(size),
        ],
      ),
    );
  }

  Container buttons(Size size) {
    return Container(
      alignment: Alignment.center,
      width: size.width * 0.8,
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/register');
              },
              child: const Text(
                'Ubah Data',
                style: TSS.mdWhiteBold,
              ),
              shape: WSS.roundedBorder(20, WSS.noBorder),
              color: Colors.green,
              highlightColor: Colors.white30,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/register');
              },
              child: const Text(
                'Keluar',
                style: TSS.mdWhiteBold,
              ),
              shape: WSS.roundedBorder(20, WSS.noBorder),
              color: Colors.green,
              highlightColor: Colors.white30,
            ),
          ),
        ],
      ),
    );
  }

  Column accountForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Akun Saya',
          style: TSS.lgBlackBold,
        ),
        Spacing.vertical20,
        Text(
          'Nama',
          style: TSS.mdBlack,
        ),
        const TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(hintText: 'Nama'),
        ),
        Spacing.vertical10,
        Text(
          'Email',
          style: TSS.mdBlack,
        ),
        TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(hintText: 'Email'),
        ),
        Spacing.vertical10,
        Text(
          'Kata Sandi',
          style: TSS.mdBlack,
        ),
        TextField(
          obscureText: true,
          keyboardType: TextInputType.visiblePassword,
          decoration: const InputDecoration(hintText: 'Kata Sandi'),
        ),
        Spacing.vertical10,
        Text(
          'No. Handphone',
          style: TSS.mdBlack,
        ),
        TextField(
          keyboardType: TextInputType.phone,
          decoration: const InputDecoration(hintText: 'No. Handphone'),
        ),
      ],
    );
  }
}
