import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:real_state_app/core/model/overview.dart';
//import 'package:real_state_app/core/model/overview.dart';

class CustomOverView extends StatelessWidget {
  Overview listoverview;

  CustomOverView({super.key, required this.listoverview});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset("${listoverview.image}")),
            Positioned(
                top: 10,
                left: 10,
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Text(
                        "${listoverview.money}",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${listoverview.month}",
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white),
                ))
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "${listoverview.title}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.place_outlined,
                      color: Colors.black54,
                    ),
                    Text(
                      "${listoverview.subtitle}",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(6),
              child: Transform.rotate(
                  angle: pi / -4, child: Icon(Icons.arrow_downward)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade300)),
            )
          ],
        )
      ],
    );
  }
}
