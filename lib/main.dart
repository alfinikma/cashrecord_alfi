import 'package:cashrecord_alfi/routes/routes.dart';
import 'package:cashrecord_alfi/screen/tambah_pemasukan.dart';
import 'package:flutter/material.dart';
import 'package:cashrecord_alfi/screen/halaman_login.dart';
import 'package:cashrecord_alfi/screen/halaman_beranda.dart';


void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cash Restore',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),       
    routes: {
        Routes.beranda: (context) => const Beranda(),
        Routes.login: (context) => const Login(),
        Routes.tambahPemasukan: (context) => const TambahPemasukan(),
      },
       home: const Beranda(),
    );
  }
}

