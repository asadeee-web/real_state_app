import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:real_state_app/core/constants/strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      "$wlcome_house",
                      fit: BoxFit.fitWidth,
                      height: height * 0.55,
                      width: width,
                    )),
              ),
              Positioned(
                  top: 40,
                  left: 30,
                  right: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 4),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Image.asset(
                          "$logo",
                          width: width * 0.09,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "Sohouse",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )
                    ],
                  ))
            ],
          ),
          SizedBox(
            height: height * 0.033,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Discover dream house from smartphone",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              "The No 1 App for searching and finding the most suitable house with you",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 80),
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Center(
                child: Text(
              "Register",
              style: TextStyle(color: Colors.white, fontSize: 18),
            )),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25), color: Colors.black),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: TextStyle(color: Colors.grey),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
