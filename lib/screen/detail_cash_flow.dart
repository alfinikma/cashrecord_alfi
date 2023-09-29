import 'package:flutter/material.dart';
import '../database/sql_helper.dart';


class DetailCashFlow extends StatefulWidget {
  const DetailCashFlow({Key? key}) : super(key: key);

  @override
  State<DetailCashFlow> createState() => _DetailCashFlowState();
}

class _DetailCashFlowState extends State<DetailCashFlow> {

@override
  void initState(){
    refreshPemasukan();
    super.initState();
  }

List<Map<String, dynamic>> pemasukan = [];
  void refreshPemasukan() async{
    final data = await SQLHelper.getPemasukan();
    setState(() {
      pemasukan = data;
    });
  }
  
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Center(
                      child: Text(
                        'Detail Cash Flow',
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
                      padding: const EdgeInsets.only(left: 8, top: 30),
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
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
          //     child: ListView.builder(
          //       itemCount: pemasukan.length,
          //       itemBuilder: (context,index) =>Card(
          //         margin: const EdgeInsets.all(15),
          //         child: ListTile(
          //            title: Text(pemasukan[index]['tanggal']),
          //            subtitle: Text(pemasukan[index]['nominal']),
          // //             subtitle: Text ("deskripsi"),
          // //             trailing: Icon(Icons.arrow_forward_sharp, color: Colors.red),
          //         )
          //       )
          //       )
               child: ListView(
                children: const <Widget>[
                  Card(child: ListTile(title: Text(''))),
                  Card(
                    child: ListTile(
                      title: Text('Rp.50000'),
                      subtitle: Text ("Membeli alat kebersihan"),
                      trailing: Icon(Icons.arrow_forward_sharp, color: Colors.red),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Rp.150000'),
              subtitle: Text ("Dapat bayaran panitia sertifikat"),
              trailing: Icon(Icons.arrow_back_sharp, color: Colors.green),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Rp.20000'),
              subtitle: Text ("Membeli makan"),
              trailing: Icon(Icons.arrow_forward_sharp, color: Colors.red),
            ),
          ),
                ],
              )
             
            ),
          ],
        ),
      ),
    );
  }
  
}
