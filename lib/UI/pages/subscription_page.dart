import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_clone/UI/widgets/categories_list_widget.dart';
import 'package:youtube_clone/UI/widgets/custom_divider_widget.dart';
import 'package:youtube_clone/UI/widgets/subscriptions_header.dart';
import 'package:youtube_clone/UI/widgets/video_preview_widget.dart';

class SubscriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
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
      ),
    );
  }
}
