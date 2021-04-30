import 'package:flutter/material.dart';

import '../screens/music_type.dart';
import 'drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0x0ff20232d),
        appBar: AppBar(
          title: new Text("Music Lyrics"),
          backgroundColor: Colors.black,
          actions: [
            new IconButton(
                icon: new Icon(Icons.search),
                onPressed: () => debugPrint("arama ")),
            new IconButton(
                icon: new Icon(Icons.add),
                onPressed: () => debugPrint("ekleme")),
          ],
        ),
        drawer: DrawerPage(),
        body: Center(
          child: Container(
            color: Colors.black12,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                ),
                Image.asset("assets/images/icon.png"),
                SizedBox(
                  height: 110,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MusicType()));
                    },
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Keşfetmeye Başla",
                            style: TextStyle(fontSize: 20),
                          ),
                          Icon(
                            Icons.arrow_right_alt,
                          ),
                        ],
                      ),
                      height: MediaQuery.of(context).size.height * 0.12,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 0),
                              color: Colors.black12,
                              blurRadius: 5,
                            ),
                          ],
                          gradient: LinearGradient(
                              colors: [
                                Colors.blueGrey,
                                Colors.white,
                                Colors.blueGrey
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.bottomRight)),
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
