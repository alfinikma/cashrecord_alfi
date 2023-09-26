import 'package:flutter/material.dart';

class TambahPengeluaran extends StatefulWidget {

  const TambahPengeluaran({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _TambahPengeluaranState createState() => _TambahPengeluaranState();
}

class _TambahPengeluaranState extends State<TambahPengeluaran> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(        
       child: Column(
          children: [
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height * .14,
              child: Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 56),
                    child: Center(
                      child: Text(
                        'Tambah Pengeluaran',
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
                      padding: const EdgeInsets.only(left: 8, top: 56),
                      child: IconButton(
                        color: Colors.black,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios_new),
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
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(14, 56, 14, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                        onTap: () {
                         
                        },
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.text,
                        //controller: _dateController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.calendar_today,
                            color: Colors.teal,
                          ),
                          hintText: 'Tanggal',
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
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.number,
                        //controller: _nominalController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          icon: Text(
                            'Rp',
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          hintText: 'Nominal',
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
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.text,
                        //controller: _descriptionController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.description,
                            color: Colors.teal,
                          ),
                          hintText: 'Keterangan',
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () => {Navigator.pop(context)},
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.red,
                                border: Border.all(
                                  color: Colors.white,
                                )),
                            margin: const EdgeInsets.only(top: 12, right: 12),
                            padding: const EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 28,
                            ),
                            alignment: Alignment.center,
                            child: const Text(
                              'Batal',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                           
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
  

