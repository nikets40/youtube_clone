import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Playlists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Random random = new Random();
    return Container(
      child: ListView.builder(
        padding: EdgeInsets.all(0),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.network(
                "https://picsum.photos/id/${1000 + index}/400/400"),
            title: Text(
              "Playlist number ${index + 1}",
              style: Theme.of(context).textTheme.headline1,
            ),
            subtitle: Text(
              "${random.nextInt(50)} videos",
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(color: Colors.white54, fontSize: 18)),
            ),
          );
        },
      ),
    );
  }
}
