import 'package:flutter/material.dart';
import 'halaman_login.dart';

class Pengaturan extends StatefulWidget {

  const Pengaturan({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _PengaturanState createState() => _PengaturanState();
}

class _PengaturanState extends State<Pengaturan> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Center(
                      child: Text(
                        'Pengaturan',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 30),
                      child: IconButton(
                        color: Colors.black,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color:Colors.white,
               
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(14, 30, 14, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        bottom: 10,
                      ),
                      child: Text(
                        'Ganti Password',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: TextFormField(
                        obscureText: true,
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.visiblePassword,
                        //controller: _oldPasswordController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.lock,
                            color: Colors.grey,
                          ),
                          hintText: 'Password lama',
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: TextFormField(
                        obscureText: true,
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.visiblePassword,
                        //controller: _newPasswordController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.lock,
                            color: Colors.teal
                          ),
                          hintText: 'Password baru',
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        //await _changePassword();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.teal,
                        ),
                        margin: const EdgeInsets.only(top: 12),
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 28,
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Simpan',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20,),

                    InkWell(
                      onTap: () => {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ),
                          (route) => false,
                        )
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.red,
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 28,
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Logout',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'images/profil.png',
                            width: 100,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 16,
                              ),
                              child: Text(
                                'About this App..',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                'Aplikasi ini dibuat oleh:',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 4.0),
                              child: Text('Nama: Alfi Nikma Agustin'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 4.0),
                              child: Text('NIM: 2141764155'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 4.0),
                              child: Text('Tanggal: 26 September 2023'),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
   
}
  


