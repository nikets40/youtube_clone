import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_clone/UI/Shared/constants.dart';

class VideoPreview extends StatelessWidget {
 final int index;
 final randomTitle =
     "Some Random Title With no meaning only for sample purpose";


 VideoPreview({@ required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                  height: screenHeight(context) * 0.25,
                  width: screenWidth(context),
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://picsum.photos/id/${1000 + index}/600/400"),
                        fit: BoxFit.cover),
                  )),
              Positioned(
                bottom: 10,
                right: 10,
                child: Container(
                  padding: EdgeInsets.all(2.5),
                  color: Colors.black.withOpacity(0.7),
                  child: Text("03:24",style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 14)),),
                ),
              )
            ],
          ),
          Container(
            padding:
            EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 25),
            width: screenWidth(context),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white24,
                  backgroundImage: NetworkImage(
                      "https://picsum.photos/id/${1000 + index}/600/400"),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                    child: Column(
                      children: [
                        Text(randomTitle,
                            style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500))
//                            TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 20),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              "Channel name",
                              style: GoogleFonts.roboto(
                                  textStyle:
                                  TextStyle(color: Colors.white70)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "76K views",
                              style: GoogleFonts.roboto(
                                  textStyle:
                                  TextStyle(color: Colors.white70)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "3 weeks ago",
                              style: GoogleFonts.roboto(
                                  textStyle:
                                  TextStyle(color: Colors.white70)),
                            ),
                          ],
                        )
                      ],
                    )),
                InkWell(
                  child: Icon(Icons.more_vert,color: Colors.white70,),
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
