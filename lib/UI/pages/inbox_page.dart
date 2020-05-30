import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InboxPage extends StatelessWidget {
  final Random random = new Random();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 20,
          );
        },
        padding: EdgeInsets.only(top:10),
        itemCount: 20,
        itemBuilder: (context, index) {
          if (index == 7 || index == 17) return Container();
          return inboxList(index, context);
        });
  }

  inboxList(int index, context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
                "https://picsum.photos/id/${1000 + index}/600/400"),
          ),
          SizedBox(
            width: 15,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Some Random title here for the video in my inbox from some cool channel",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .headline1.copyWith(fontSize: 16),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    "${random.nextInt(5)} days ago",
                    style: GoogleFonts.roboto(
                        textStyle:
                            TextStyle(color: Colors.white54, fontSize: 14)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 75,
            height: 50,
            child: Image.network(
                "https://picsum.photos/id/${1000 + index}/600/400"),
          ),
          Padding(
            padding: const EdgeInsets.only(top:10.0,left: 5),
            child: InkWell(
              onTap: (){},
              child: Icon(
                Icons.more_vert,
                color: Colors.white54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
