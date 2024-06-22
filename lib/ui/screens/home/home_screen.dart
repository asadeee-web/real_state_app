import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:provider/provider.dart';
import 'package:real_state_app/core/constants/strings.dart';
import 'package:real_state_app/ui/screens/details/details_screen.dart';
import 'package:real_state_app/ui/screens/home/home_view_model.dart';
import 'package:real_state_app/ui/utils/bottomnav.dart';
//import 'package:real_state_app/ui/screens/home/home_view_model.dart';
import 'package:real_state_app/ui/utils/overview_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return ChangeNotifierProvider(
        create: (BuildContext context) => HomeViewModel(),
        child: Consumer<HomeViewModel>(
            builder: (context, model, child) => Scaffold(
                  body: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Stack(children: [
                        Column(
                          children: [
                            ///
                            ///app bar
                            ///
                            _appbar(),
                            SizedBox(
                              height: height * 0.010,
                            ),

                            ///
                            ///searchbox
                            ///
                            _searchbox(),

                            SizedBox(height: height * 0.03),

                            ///
                            ///discount container
                            ///
                            _discount_container(height, width),
                            SizedBox(
                              height: height * 0.02,
                            ),

                            ///
                            ///listview
                            ///
                            _listview(model)
                          ],
                        ),
                        Positioned(
                            bottom: 10, child: Center(child: BottomNav()))
                      ]),
                    ),
                  ),
                )));
  }

  Expanded _listview(HomeViewModel model) {
    return Expanded(
        child: ListView.separated(
            //physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Get.to(DetailScreen(
                    listoverview: model.listhomeviewmodel[index],
                  ));
                },
                child: CustomOverView(
                    listoverview: model.listhomeviewmodel[index]),
              );
            },
            separatorBuilder: ((context, index) => SizedBox(
                  height: 5,
                )),
            itemCount: model.listhomeviewmodel.length));
  }

  Container _discount_container(double height, double width) {
    return Container(
      height: height * 0.2,
      width: width,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "GET YOUR 10% \nCASHBACK",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Expired 20 Apr 2024",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("$discount_image"), fit: BoxFit.fitWidth),
          borderRadius: BorderRadius.circular(12)),
    );
  }

  Container _searchbox() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4),
      //margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            hintText: "Search for dream home",
            hintStyle:
                TextStyle(color: Colors.grey, fontWeight: FontWeight.normal)),
      ),
    );
  }

  Row _appbar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(8),
          child: Icon(Icons.menu),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Colors.grey.shade300)),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Current location",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.place,
                  color: Colors.blue,
                ),
                Text(
                  "Melbourne,Australia ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(8),
          child: Icon(Icons.tune),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Colors.grey.shade300)),
        )
      ],
    );
  }
}
