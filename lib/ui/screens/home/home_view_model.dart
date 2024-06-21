import 'package:real_state_app/core/constants/strings.dart';
import 'package:real_state_app/core/model/overview.dart';
import 'package:real_state_app/core/others/base_view_model.dart';

class HomeViewModel extends BaseViewModel {
  List<Overview> listhomeviewmodel = [
    Overview(
        image: "$house_1",
        money: "\$1199",
        month: "/month",
        subtitle: "Melbourune,Australia",
        title: "Whitespace House"),
    Overview(
        image: "$house_2",
        money: "\$2000",
        month: "/month",
        subtitle: "Melbourune,Australia",
        title: "Queen Victoria Market"),
    Overview(
        image: "$house_3",
        money: "\$1200",
        month: "/month",
        subtitle: "Melbourune,Australia",
        title: "Old Melbourne Gaol")
  ];
}
