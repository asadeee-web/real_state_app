import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:provider/provider.dart';
import 'package:real_state_app/core/constants/colors.dart';
import 'package:real_state_app/core/model/detail.dart';
import 'package:real_state_app/core/model/overview.dart';
import 'package:real_state_app/ui/screens/details/details_view_model.dart';
import 'package:real_state_app/ui/screens/home/home_screen.dart';
import 'package:real_state_app/ui/screens/home/home_view_model.dart';

class DetailScreen extends StatelessWidget {
  Overview? listoverview;
  DetailScreen({
    this.listoverview,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomeViewModel(),
        child: Consumer<HomeViewModel>(
            builder: (context, model, child) => Scaffold(
                    body: Column(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset("${listoverview?.image}")),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: () => Get.to(HomeScreen()),
                                child: Container(
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border:
                                          Border.all(color: white, width: 1)),
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: white,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                child: Row(
                                  children: [
                                    Text(
                                      "${listoverview?.money}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "${listoverview?.month}",
                                      style: TextStyle(color: Colors.black54),
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Colors.white),
                              ),
                              Container(
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: white, width: 1)),
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  color: white,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ))));
  }
}
