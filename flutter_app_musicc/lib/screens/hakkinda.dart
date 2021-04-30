import 'package:flutter/material.dart';

class Hakkinda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0x0ff20232d),
        appBar: AppBar(
          title: new Text("Hakkında"),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Text(
            """Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen"
             3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 193301037 numaralı 
             Öğrenci Gamzenur Seyit tarafından 30 Nisan 2021 günü teslim edilmek üzere  yapılmıştır.""",
          ),
        ));
  }
}
