import 'package:flutter/material.dart';

import 'lyrics.dart';

class Sing extends StatelessWidget {
  List sings;
  Sing(this.sings);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Şarkı Listesi"),
          backgroundColor: Colors.black,
        ),
        body: Container(
          color: Color(0x0ff20232d),
          child: ListView.builder(
              itemCount: sings.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(16),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Lyrics(
                                    sings[index]["name"],
                                    sings[index]["photo"],
                                    sings[index]["lyrics"],
                                  )));
                    },
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            sings[index]["name"],
                          ),
                          Icon(Icons.music_note),
                        ],
                      ),
                      height: MediaQuery.of(context).size.height * 0.09,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 0),
                              color: Colors.black12,
                              blurRadius: 3,
                            ),
                          ],
                          gradient: LinearGradient(
                              colors: [Colors.grey, Colors.white, Colors.grey],
                              begin: Alignment.bottomLeft,
                              end: Alignment.bottomRight)),
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                );
              }),
        ));
  }
}
