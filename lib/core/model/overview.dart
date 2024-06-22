import 'package:real_state_app/core/constants/strings.dart';

class Overview {
  String image;
  String money;
  String month;
  String title;
  String subtitle;
  String? ct1;
  String? ct2;
  String? ct3;
  String? detail;
  Overview(
      {this.ct1,
      this.ct2,
      this.ct3,
      this.detail,
      required this.image,
      required this.money,
      required this.subtitle,
      required this.month,
      required this.title});
}
