import 'package:flutter/cupertino.dart';
import 'package:real_state_app/core/model/detail.dart';

class CustomDetails extends StatelessWidget {
  CustomDetails({super.key, this.listdetails});
  Details? listdetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [Image.asset("${listdetails?.image}")],
        )
      ],
    );
  }
}
