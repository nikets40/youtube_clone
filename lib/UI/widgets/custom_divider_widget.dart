import 'package:flutter/material.dart';
import 'package:youtube_clone/UI/Shared/constants.dart';

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.5,
      width: screenWidth(context),
      color: Colors.white38,
    );
  }
}
