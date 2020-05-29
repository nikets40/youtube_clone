import 'package:flutter/material.dart';
import 'package:youtube_clone/UI/Shared/constants.dart';

class CategoriesList extends StatelessWidget implements PreferredSizeWidget {
  final int selected;

  CategoriesList({this.selected = 0});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 0.5,
          width: screenWidth(context),
          color: Colors.white38,
        ),
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
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                      color: index == selected?Colors.white :Colors.white10,
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: Center(
                    child: Text(
                      "Category $index",
                      style: TextStyle(color: index == selected?Theme.of(context).primaryColor :Colors.white),
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
