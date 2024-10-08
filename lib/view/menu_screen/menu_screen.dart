import 'package:flutter/material.dart';
import 'package:kfc_app/dummy_db.dart';
import 'package:kfc_app/utils/constants/color_constants.dart';
import 'package:kfc_app/view/menu_screen/widget/box_meal_card.dart';
import 'package:kfc_app/view/menu_screen/widget/chicken_bucket_card.dart';
import 'package:kfc_app/view/menu_screen/widget/family_fest_card.dart';
import 'package:kfc_app/view/menu_screen/widget/new_chickenroll_card.dart';
import 'package:kfc_app/view/menu_screen/widget/rice_bowls_card.dart';
import 'package:kfc_app/view/menu_screen/widget/value_snack_card.dart';
import 'package:kfc_app/view/menu_screen/widget/wednesday_special_card.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: 11,
          child: Column(children: [
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "DELIVERY",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Juma Masjid R",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(
                        Icons.arrow_right,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        "ASAP",
                        style: TextStyle(color: Colors.black),
                      ),
                      Spacer(),
                      Container(
                        width: 65,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Center(
                            child: Text(
                          "change",
                          style: TextStyle(color: Colors.black),
                        )),
                      )
                    ],
                  )
                ],
              ),
            ),
            Divider(),
            TabBar(
              unselectedLabelColor: Colors.grey,
              indicatorColor: ColorConstants.mainBlack,
              labelStyle: TextStyle(
                  color: ColorConstants.mainBlack,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              tabs: [
                // Icon(Icons.search),
                Text("Wednesday Special"),
                Text("New Chicken Rolls"),
                Text("Family Feast"),
                Text("Chicken Buckets"),
                Text("Box Meals"),
                Text("Value Snacks"),

                Text("Rice Bowls"),
                Text("Burgers"),
                Text("Peri Peri Chicken"),
                Text("Snacks"),
                Text("Bevarges"),
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                ListView.separated(
                  itemBuilder: (context, index) {
                    var item = DummyDb.wednesdayspecialcard[index];

                    return WednesdaySpecialCard(
                      title: item["title"],
                      subTitle: item["subTitle"],
                      price: item["price"],
                      feature: item["feature"],
                      image: item["image"],
                      category: item["category"],
                      details: item["details"],
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    height: 2,
                  ),
                  itemCount: DummyDb.wednesdayspecialcard.length,
                ),
                ListView.separated(
                  itemBuilder: (context, index) {
                    var item = DummyDb.NewChickenrolllist[index];

                    return NewChickenrollCard(
                      title: item["title"],
                      subtitle: item["subtitle"],
                      price: item["price"],
                      feature: item["feature"],
                      image: item["image"],
                      category: item["category"],
                      details: item["details"],
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    height: 2,
                  ),
                  itemCount: DummyDb.NewChickenrolllist.length,
                ),
                ListView.separated(
                  itemBuilder: (context, index) {
                    var item = DummyDb.familyfestList[index];

                    return FamilyFestCard(
                      title: item["title"],
                      subtilte: item["subtitle"],
                      price: item["price"],
                      feature: item["feature"],
                      image: item["image"],
                      category: item["category"],
                      details: item["details"],
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    height: 2,
                  ),
                  itemCount: DummyDb.familyfestList.length,
                ),
                ListView.separated(
                  itemBuilder: (context, index) {
                    var item = DummyDb.ChickenBucketList[index];

                    return ChickenBucketCard(
                      title: item["title"],
                      subTitle: item["subtitle"],
                      price: item["price"],
                      feature: item["feature"],
                      image: item["image"],
                      category: item["category"],
                      details: item["details"],
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    height: 2,
                  ),
                  itemCount: DummyDb.ChickenBucketList.length,
                ),
                ListView.separated(
                  itemBuilder: (context, index) {
                    var item = DummyDb.boxmealList[index];

                    return BoxMealCard(
                      title: item["title"],
                      subTitle: item["subtitle"],
                      price: item["price"],
                      feature: item["feature"],
                      image: item["image"],
                      category: item["category"],
                      details: item["details"],
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    height: 2,
                  ),
                  itemCount: DummyDb.boxmealList.length,
                ),
                ListView.separated(
                  itemBuilder: (context, index) {
                    var item = DummyDb.ValueSnackList[index];

                    return ValueSnackCard(
                      title: item["title"],
                      subTitle: item["subtitle"],
                      price: item["price"],
                      feature: item["feature"],
                      image: item["image"],
                      category: item["category"],
                      details: item["details"],
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    height: 2,
                  ),
                  itemCount: DummyDb.ValueSnackList.length,
                ),
                ListView.separated(
                  itemBuilder: (context, index) {
                    var item = DummyDb.ricebowlList[index];

                    return RiceBowlsCard(
                      title: item["title"],
                      subTitle: item["subtitle"],
                      price: item["price"],
                      feature: item["feature"],
                      image: item["image"],
                      category: item["category"],
                      details: item["details"],
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    height: 2,
                  ),
                  itemCount: DummyDb.wednesdayspecialcard.length,
                ),
                ListView.separated(
                  itemBuilder: (context, index) {
                    var item = DummyDb.wednesdayspecialcard[index];

                    return WednesdaySpecialCard(
                      title: item["title"],
                      subTitle: item["subTitle"],
                      price: item["price"],
                      feature: item["feature"],
                      image: item["image"],
                      category: item["category"],
                      details: item["details"],
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    height: 2,
                  ),
                  itemCount: DummyDb.wednesdayspecialcard.length,
                ),
                ListView.separated(
                  itemBuilder: (context, index) {
                    var item = DummyDb.wednesdayspecialcard[index];

                    return WednesdaySpecialCard(
                      title: item["title"],
                      subTitle: item["subTitle"],
                      price: item["price"],
                      feature: item["feature"],
                      image: item["image"],
                      category: item["category"],
                      details: item["details"],
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    height: 2,
                  ),
                  itemCount: DummyDb.wednesdayspecialcard.length,
                ),
                ListView.separated(
                  itemBuilder: (context, index) {
                    var item = DummyDb.wednesdayspecialcard[index];

                    return WednesdaySpecialCard(
                      title: item["title"],
                      subTitle: item["subTitle"],
                      price: item["price"],
                      feature: item["feature"],
                      image: item["image"],
                      category: item["category"],
                      details: item["details"],
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    height: 2,
                  ),
                  itemCount: DummyDb.wednesdayspecialcard.length,
                ),
                ListView.separated(
                  itemBuilder: (context, index) {
                    var item = DummyDb.wednesdayspecialcard[index];

                    return WednesdaySpecialCard(
                      title: item["title"],
                      subTitle: item["subTitle"],
                      price: item["price"],
                      feature: item["feature"],
                      image: item["image"],
                      category: item["category"],
                      details: item["details"],
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    height: 2,
                  ),
                  itemCount: DummyDb.wednesdayspecialcard.length,
                ),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
