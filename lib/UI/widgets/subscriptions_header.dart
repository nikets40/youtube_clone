import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_clone/UI/Shared/constants.dart';

import 'categories_list_widget.dart';
import 'custom_divider_widget.dart';

class SubscriptionsHeader extends StatelessWidget implements PreferredSizeWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomDivider(),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(
                height: 70,
                width: screenWidth(context)*0.85,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      if (index == 7 || index == 17) return Container();
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(width: 10),
                          SizedBox(
                            width: 60,
                            height: 60,
                            child: Stack(
                              children: [
                                Align(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white24,
                                    radius: 30,
                                    backgroundImage: NetworkImage(
                                        "https://picsum.photos/id/${1000 + index}/600/400"),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: CircleAvatar(
                                      radius: 8,
                                      backgroundColor:
                                          Theme.of(context).primaryColor,
                                      child: CircleAvatar(
                                        radius: 5,
                                      )),
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                    itemCount: 20),
              ),
              SizedBox(
                width: screenWidth(context)*0.15,
                child: Material(
                  color: Theme.of(context).primaryColor,
                  child: Center(
                    child: Text(
                      "All",
                      style:
                          GoogleFonts.roboto(fontSize: 20, color: Colors.blueAccent,fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              )
            ],
          ),
          CategoriesList(isSubscriptionHeader: true,),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(135);
}
