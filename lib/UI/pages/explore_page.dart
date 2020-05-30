import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_clone/UI/Shared/constants.dart';
import 'package:youtube_clone/UI/widgets/explore_categories_widget.dart';
import 'package:youtube_clone/UI/widgets/video_preview_widget.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ExplorerCategories(),
          Container(
            height: 0.5,
            width: screenWidth(context),
            color: Colors.white38,
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Trending",
                style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 24)),
              ),
            ),

          ),
          Container(
            height: 0.5,
            width: screenWidth(context),
            color: Colors.white38,
          ),
          ListView.builder(
            padding: EdgeInsets.all(0),
            itemCount: 10,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              if (index == 7) return Container();
              return
                VideoPreview(index: index,);
            },
          ),
        ],
      ),
    );
  }
}
