import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_clone/UI/widgets/custom_divider_widget.dart';
import 'package:youtube_clone/UI/widgets/playlist_widget.dart';

class LibraryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var h1Style = Theme.of(context).textTheme.headline1;
    return Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Recents Container
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:15.0),
                    child: Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Text(
                          "Recent",
                          style: Theme.of(context).textTheme.headline1,
                        )),
                  ),
                  SizedBox(height: 10,),
                  Recents(),
                ],
              ),
            ),

            CustomDivider(),


            Container(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.history,
                      color: Colors.white54,
                      size: 30,
                    ),
                    onTap: () {},
                    title: Text(
                      "History",
                      style: h1Style,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.file_download,
                      color: Colors.white54,
                      size: 30,
                    ),
                    onTap: () {},
                    title: Text(
                      "Downloads",
                      style: h1Style,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.ondemand_video,
                      color: Colors.white54,
                      size: 30,
                    ),
                    onTap: () {},
                    title: Text(
                      "Your Videos",
                      style: h1Style,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      FontAwesomeIcons.tag,
                      color: Colors.white54,
                      size: 26,
                    ),
                    onTap: () {},
                    title: Text(
                      "Purchases",
                      style: h1Style,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.watch_later,
                      color: Colors.white54,
                      size: 30,
                    ),
                    onTap: () {},
                    title: Text(
                      "Watch Later",
                      style: h1Style,
                    ),
                  ),
                ],
              ),
            ),
            CustomDivider(),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
              child: Column(
                children: [
                  Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 10),
                        child: Text(
                          "Playlist",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      )),
                  ListTile(
                    leading: Icon(
                      Icons.add,
                      color: Colors.blueAccent,
                      size: 40,
                    ),
                    title: Text(
                      "New Playlist",
                      style: h1Style.copyWith(color: Colors.blueAccent),
                    ),
                  ),
                  Playlists(),
                  ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Icon(
                        Icons.thumb_up,
                        size: 35,
                        color: Colors.white54,
                      ),
                    ),
                    title: Text(
                      "Liked Videos",
                      style: h1Style,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Recents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        padding: EdgeInsets.all(0),
        physics: ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          if (index == 7) return Container();
          return Padding(
            padding: const EdgeInsets.only(left:15.0),
            child: SizedBox(
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://picsum.photos/id/${1000 + index}/600/400")))),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          "Some Random Title for the video",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .headline1
                              .copyWith(fontSize: 16),
                        ),
                      ),
                      Align(alignment: AlignmentDirectional.centerEnd,child: Icon(Icons.more_vert,color: Colors.white54,))
                    ],
                  ),
                  SizedBox(height: 4,),
                  Text("Niket Singh",style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white54,fontSize: 14)),)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
