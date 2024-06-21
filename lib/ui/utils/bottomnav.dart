import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_state_app/core/constants/colors.dart';
import 'package:real_state_app/core/constants/strings.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(15),
      width: width * 0.8,
      height: height * 0.07,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), color: black),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            "$home_icon",
            color: white,
          ),
          Image.asset(
            "$menu_icon",
            color: white,
          ),
          Image.asset(
            "$like_icon",
            color: white,
          ),
          CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://thumbs.wbm.im/pw/small/8fcbbec488a341d161edb2e9ab302aa3.jpg"))
        ],
      ),
    );
  }
}
