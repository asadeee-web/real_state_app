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
                    body: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Stack(
                    children: [
                      ListView(
                        physics: BouncingScrollPhysics(),
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                          "${listoverview?.image}")),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        GestureDetector(
                                          onTap: () => Get.to(HomeScreen()),
                                          child: Container(
                                            padding: EdgeInsets.all(6),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                    color: white, width: 1)),
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
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "${listoverview?.month}",
                                                style: TextStyle(
                                                    color: Colors.black54),
                                              )
                                            ],
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              color: Colors.white),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(6),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: white, width: 1)),
                                          child: Icon(
                                            Icons.favorite_border_outlined,
                                            color: white,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "${listoverview?.title}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.place_outlined,
                                    color: Colors.black54,
                                  ),
                                  Text(
                                    "${listoverview?.subtitle}",
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    child: Row(
                                      children: [
                                        Icon(Icons.bed_outlined),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text("${listoverview?.ct1}")
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: grayshade),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    child: Row(
                                      children: [
                                        Icon(Icons.bathtub_outlined),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text("${listoverview?.ct2}")
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: grayshade),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    child: Row(
                                      children: [
                                        Icon(Icons.square_foot_outlined),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text("${listoverview?.ct3}")
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: grayshade),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Details",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("${listoverview?.detail}")
                            ],
                          ),
                        ],
                      ),
                      Positioned(
                        left: 30,
                        bottom: 20,
                        right: 20,
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(12),
                              child: Icon(Icons.mail_outline_outlined),
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Center(
                              child: Container(
                                //padding: EdgeInsets.all(15),
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 100, vertical: 15),
                                child: Text(
                                  "Book Now",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(6)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ))));
  }
}
