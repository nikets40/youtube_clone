import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_clone/UI/widgets/video_preview_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
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
    );
  }
}
