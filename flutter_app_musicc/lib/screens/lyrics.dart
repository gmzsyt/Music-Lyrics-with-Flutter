import 'package:flutter/material.dart';

class Lyrics extends StatelessWidget {
  String name;
  String photo;
  String lyrics;
  Lyrics(this.name, this.photo, this.lyrics);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: new AppBar(
        title: new Text(name + " Lyrics"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(photo,
                      height: MediaQuery.of(context).size.width * 0.40,
                      width: MediaQuery.of(context).size.width * 0.40,
                      fit: BoxFit.fill),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  lyrics,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
