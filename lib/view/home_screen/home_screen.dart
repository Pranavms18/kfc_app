import 'package:flutter/material.dart';
import 'package:kfc_app/dummy_db.dart';
import 'package:kfc_app/utils/constants/color_constants.dart';
import 'package:kfc_app/view/home_screen/widget/browse_categoies_card.dart';
import 'package:kfc_app/view/home_screen/widget/offer_card.dart';
import 'package:kfc_app/view/home_screen/widget/title_profile_card.dart';
import 'package:kfc_app/view/menu_screen/menu_screen.dart';

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              _titleSection(),
              _adSecton(),
              SizedBox(
                height: 20,
              ),
              _browseCategorySection(context),
              _offerCardSection()
            ],
          ),
        ),
      ),
    );
  }

  Container _offerCardSection() {
    return Container(
      height: 550,
      color: ColorConstants.mainBlack,
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Text(
                    "EXCLUSIVE OFFERS FOR YOU",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 420,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      // physics: AlwaysScrollableScrollPhysics(),
                      itemBuilder: (context, index) => offer_card(
                          image: DummyDb.offerList[index]["image"],
                          title: DummyDb.offerList[index]["title"],
                          subtitle: DummyDb.offerList[index]["subtitle"],
                          details: DummyDb.offerList[index]["details"],
                          offer: DummyDb.offerList[index]["offer"]),
                      separatorBuilder: (context, index) => SizedBox(
                            width: 15,
                          ),
                      itemCount: DummyDb.offerList.length),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _browseCategorySection(BuildContext context) {
    return Container(
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
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MenuScreen(),
                  ));
            },
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: DummyDb.categoriesCardList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10, crossAxisSpacing: 8, crossAxisCount: 2),
              itemBuilder: (BuildContext context, int index) {
                return browse_categories_card(
                  image: DummyDb.categoriesCardList[index]["imageurl"],
                  itemName: DummyDb.categoriesCardList[index]["text"],
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _adSecton() {
    return SizedBox(
      height: 300,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => title_profilecard(
                image: DummyDb.homescreenimgage[index]["imageurl"],
              ),
          separatorBuilder: (context, index) => SizedBox(),
          itemCount: 3),
    );
  }

  Widget _titleSection() {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "DELIVERY",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
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
              InkWell(
                onTap: () {},
                child: Container(
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
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
