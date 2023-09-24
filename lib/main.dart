import 'package:flutter/material.dart';
import 'package:cashrecord_alfi/screen/halaman_login.dart';
import 'package:cashrecord_alfi/screen/halaman_beranda.dart';


void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cash Restore',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),  
      home: const Login(),
    );
  }
}

