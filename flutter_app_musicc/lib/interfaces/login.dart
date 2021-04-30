import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'file:///C:/flutter/flutter_app_musicc/lib/interfaces/kayit_ekrani.dart';

import 'HomePage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String sifre = '';

  void emailata(String text) {
    setState(() {
      email = text;
    });
  }

  void sifreata(String text) {
    setState(() {
      sifre = text;
    });
  } //tmmı knk teşekkür ederim ask ne dmk muahb

  void kontrol() {
    if ((email.length > 4) && (sifre.length > 4)) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    } else {}
  }

  void hatagoster() {
    Fluttertoast.showToast(
      msg: "Email ve Şifre boş bırakılamaz(Şifreniz en az 4 karakter olmalı)",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIos: 1,
      backgroundColor: Colors.cyan[600],
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    bool butonpasif = true;
    if ((email.length > 3) && (sifre.length > 3)) {
      butonpasif = false;
    } else {
      butonpasif = true;
    }

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
    ));
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: Color(0x0ff20232d),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 150),
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/icon.png"),
                        fit: BoxFit.contain)),
              ),
              Container(
                width: 100,
                height: 100,
                //  decoration: BoxDecoration(
                //  image: DecorationImage(
                // image: AssetImage("assets/images/logo.png"),
                //  fit: BoxFit.contain)),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(right: 10, left: 10),
                        child: TextField(
                          onChanged: (text) {
                            emailata(text);
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16)),
                            labelText: 'E-Mail',
                          ),
                        )),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(right: 10, left: 10, top: 10),
                        child: TextField(
                          onChanged: (text) {
                            sifreata(text);
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16)),
                            border: OutlineInputBorder(),
                            labelText: 'Şifre:',
                          ),
                        )),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.only(right: 50, left: 50, top: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                      onPressed: butonpasif ? hatagoster : kontrol,
                      child: Text("Giriş"),
                    ),
                  ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.only(
                      right: 50,
                      left: 50,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => KayitEkrani()));
                      },
                      child: Text("Kaydol"),
                    ),
                  ))
                ],
              )
            ],
          ),
        ));
  }
}
