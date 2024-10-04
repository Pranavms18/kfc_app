import 'package:flutter/material.dart';
import 'package:kfc_app/dummy_db.dart';
import 'package:kfc_app/utils/constants/color_constants.dart';
import 'package:kfc_app/view/menu_screen/widget/wednesday_special_card.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: 13,
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
                Icon(Icons.search),
                Text("Wednesday Special"),
                Text("New Chicken Rolls"),
                Text("Family Feast"),
                Text("Chicken Buckets"),
                Text("Box Meals"),
                Text("Value Snacks"),
                Text("Internationals Burger Fest"),
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

                // WednesdaySpecialCard(),
                // WednesdaySpecialCard(),
                // WednesdaySpecialCard(),
                // WednesdaySpecialCard(),
                // WednesdaySpecialCard(),
                // WednesdaySpecialCard(),
                // WednesdaySpecialCard(),
                // WednesdaySpecialCard(),
                // WednesdaySpecialCard(),
                // WednesdaySpecialCard(),
                // WednesdaySpecialCard(),
                // WednesdaySpecialCard(),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
