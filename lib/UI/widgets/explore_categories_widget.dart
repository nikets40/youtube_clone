import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExplorerCategories extends StatelessWidget {
  final List<String> _exploreCategories = [
    "Trending",
    "Gaming",
    "Music",
    "News",
    "Movies",
    "Fashion & Beauty",
    "Learning",
    "#With me"
  ];
  final List<Color> colors = [
    Color(0xffC03144),
    Color(0xff34B0A6),
    Color(0xffC48979),
    Color(0xff03539F),
    Color(0xffC5A10E),
    Color(0xff8F8CA7),
    Color(0xff057F58),
    Color(0xffFC8D3F),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black.withOpacity(0.4),
        padding: EdgeInsets.all(10),
        child: GridView.builder(
            padding: EdgeInsets.all(0),
            itemCount: 8,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: MediaQuery.of(context).size.width / 100,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return Stack(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: colors[index]),
                      ),
                  Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Colors.black.withOpacity(0.4),
                                Colors.transparent
                              ],
                              begin: AlignmentDirectional.bottomStart,
                              end: AlignmentDirectional.topEnd),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: colors[index]),
                      child: Center(
                        child: Row(
                          children: [
                            SizedBox(width: 30,),
                            Text(
                              _exploreCategories[index],
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16)),
                            ),
                          ],
                        ),
                      )),
                ],
              );
            }));
  }
}
