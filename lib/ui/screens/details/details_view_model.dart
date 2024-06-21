import 'package:real_state_app/core/constants/strings.dart';
import 'package:real_state_app/core/model/detail.dart';
import 'package:real_state_app/core/others/base_view_model.dart';

class DetailsViewModel extends BaseViewModel {
  List<Details> lisdetailviewmodel = [
    Details(
        detail:
            "123 Maple Street, Springfield, IL, 62704. Rent: \$1,200 per month. Single-family home built in 1995. The house has 1,800 square feet of living space with 3 bedrooms, 2 bathrooms, a living room, dining area, kitchen, and laundry room. The open-concept layout features a spacious living and dining area with a separate kitchen. The master bedroom has an en-suite bathroom, while the two additional bedrooms share a full bathroom. Interior features include hardwood flooring in living areas, tile in bathrooms and kitchen, and carpet in bedrooms. The kitchen is equipped with a refrigerator, oven, microwave, dishwasher, washer, and dryer. The house has central heating and air conditioning, with a walk-in closet in the master bedroom, closets in other bedrooms, a pantry in the kitchen, and additional storage space in the laundry room. ",
        image: "$house_1",
        money: "\$1199",
        month: "/month",
        subtitle: "Melbourune,Australia",
        title: "Whitespace House",
        ct1: '3 Beds',
        ct2: '2 Bath',
        ct3: '240m'),
    Details(
        detail:
            "123 Maple Street, Springfield, IL, 62704. Rent: \$1,200 per month. Single-family home built in 1995. The house has 1,800 square feet of living space with 3 bedrooms, 2 bathrooms, a living room, dining area, kitchen, and laundry room. The open-concept layout features a spacious living and dining area with a separate kitchen. The master bedroom has an en-suite bathroom, while the two additional bedrooms share a full bathroom. Interior features include hardwood flooring in living areas, tile in bathrooms and kitchen, and carpet in bedrooms. The kitchen is equipped with a refrigerator, oven, microwave, dishwasher, washer, and dryer. The house has central heating and air conditioning, with a walk-in closet in the master bedroom, closets in other bedrooms, a pantry in the kitchen, and additional storage space in the laundry room. ",
        ct1: '5 Beds',
        ct2: '4 Bath',
        ct3: '340m',
        image: "$house_2",
        money: "\$2000",
        month: "/month",
        subtitle: "Melbourune,Australia",
        title: "Queen Victoria Market"),
    Details(
        detail:
            "123 Maple Street, Springfield, IL, 62704. Rent: \$1,200 per month. Single-family home built in 1995. The house has 1,800 square feet of living space with 3 bedrooms, 2 bathrooms, a living room, dining area, kitchen, and laundry room. The open-concept layout features a spacious living and dining area with a separate kitchen. The master bedroom has an en-suite bathroom, while the two additional bedrooms share a full bathroom. Interior features include hardwood flooring in living areas, tile in bathrooms and kitchen, and carpet in bedrooms. The kitchen is equipped with a refrigerator, oven, microwave, dishwasher, washer, and dryer. The house has central heating and air conditioning, with a walk-in closet in the master bedroom, closets in other bedrooms, a pantry in the kitchen, and additional storage space in the laundry room. ",
        ct1: '8 Beds',
        ct2: '6 Bath',
        ct3: '540m',
        image: "$house_3",
        money: "\$1200",
        month: "/month",
        subtitle: "Melbourune,Australia",
        title: "Old Melbourne Gaol")
  ];
}
