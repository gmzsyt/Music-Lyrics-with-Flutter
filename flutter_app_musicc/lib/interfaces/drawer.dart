import 'package:flutter/material.dart';

import '../screens/favorite.dart';
import '../screens/hakkinda.dart';
import '../screens/music_type.dart';
import 'HomePage.dart';
import 'login.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        color: Colors.black,
        child: Drawer(
          child: Container(
            color: Colors.black,
            child: new ListView(
              children: [
                new UserAccountsDrawerHeader(
                    accountName: Text(
                      "Gamznur Seyit",
                      style: TextStyle(color: Colors.white),
                    ),
                    accountEmail: Text(
                      "gmzzsuyyt@gmail.com",
                      style: TextStyle(color: Colors.white),
                    )),
                DecoratedBox(
                    decoration: BoxDecoration(
                  color: Colors.red,
                )),
                ListTile(
                  title: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Text(
                      "Anasayfa",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  leading: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                ListTile(
                  title: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Home())); //Arama sayfasına sonradan yöndendirme yapılacak
                    },
                    child: Text(
                      "Arama Sayfası",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  leading: Icon(
                    Icons.search,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
                ListTile(
                  title: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MusicType()));
                    },
                    child: Text(
                      "Müzik Türleri",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  leading: Icon(
                    Icons.music_note,
                    color: Colors.red,
                  ),
                ),
                ListTile(
                  title: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FavoritePages()));
                    },
                    child: Text(
                      "Favoriler",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  leading: Icon(
                    Icons.star,
                    color: Colors.redAccent,
                  ),
                ),
                ListTile(
                  title: GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                          (route) => false);

                      //Arama sayfasına sonradan yöndendirme yapılacak
                    },
                    child: Text(
                      "Giriş Ekranı",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  leading: Icon(
                    Icons.accessibility_sharp,
                    color: Colors.blueGrey,
                  ),
                ),
                ListTile(
                  title: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Hakkinda()));
                    },
                    child: Text(
                      "Hakkında",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  leading: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
                Divider(
                  height: 10.0,
                  color: Colors.black,
                ),
                ListTile(
                  title: Text(
                    "Kapat",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
