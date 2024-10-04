import 'package:flutter/material.dart';
import 'package:kfc_app/dummy_db.dart';
import 'package:kfc_app/utils/constants/color_constants.dart';
import 'package:kfc_app/view/home_screen/widget/browse_categoies_card.dart';
import 'package:kfc_app/view/home_screen/widget/title_profile_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
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
            SizedBox(
              height: 300,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => title_profilecard(
                        image: DummyDb.homescreenimgage[index]["imageurl"],
                      ),
                  separatorBuilder: (context, index) => SizedBox(),
                  itemCount: 3),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsetsDirectional.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Align(
                          child: Text(
                            "BROWSE CATEGORIES",
                            style: TextStyle(
                                color: ColorConstants.mainBlack,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          alignment: Alignment.topLeft,
                        ),
                        Divider(
                          thickness: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: GridView.builder(
                        itemCount: DummyDb.categoriesCardList.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 8,
                            crossAxisCount: 2),
                        itemBuilder: (BuildContext context, int index) {
                          return browse_categories_card(
                            image: DummyDb.categoriesCardList[index]
                                ["imageurl"],
                            itemName: DummyDb.categoriesCardList[index]["text"],
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
