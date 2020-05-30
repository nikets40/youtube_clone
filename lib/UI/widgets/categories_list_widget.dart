import 'package:flutter/material.dart';
import 'package:youtube_clone/UI/Shared/constants.dart';

import 'custom_divider_widget.dart';

class CategoriesList extends StatelessWidget implements PreferredSizeWidget {
  final int selected;
  final List subscriptionsList = ["All","Toady","Continue watching","Unwatched","Live","Posts"];
  final bool isSubscriptionHeader;


  CategoriesList({this.selected = 0, this.isSubscriptionHeader = false});

  @override
  Widget build(BuildContext context) {
    return
      Column(
      children: [
        CustomDivider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:8.0),
          child: SizedBox(
            width: screenWidth(context),
            height: 35,
            child: ListView.separated(
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 5,
                );
              },
              scrollDirection: Axis.horizontal,
              itemCount: isSubscriptionHeader?subscriptionsList.length: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  decoration: BoxDecoration(
                      color: index == selected?Colors.white :Colors.white10,
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: Center(
                    child: Text(isSubscriptionHeader?subscriptionsList[index]:
                      "Category $index",
                      style: TextStyle(color: index == selected?Theme.of(context).primaryColor :Colors.white,fontSize: 15),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(35+16.00);
}
