import 'package:flutter/material.dart';
import 'package:kfc_app/utils/constants/color_constants.dart';
import 'package:kfc_app/view/menu_screen/menu_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(children: [
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
                  ),
                ],
              )
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              Icon(Icons.line_axis),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "MY CART",
                  style: TextStyle(
                      color: ColorConstants.mainBlack,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(top: 60),
                height: 440,
                width: 400,
                color: Color.fromARGB(255, 238, 232, 232),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "YOUR CART IS EMPTY.\n LETS START AN ODER",
                        style: TextStyle(
                            color: ColorConstants.mainBlack,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MenuScreen(),
                            ));
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        child: Text(
                          "Start Order",
                          style: TextStyle(color: Colors.white),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Image(
                      fit: BoxFit.fitHeight,
                      image: AssetImage("assets/images/emptycart.png"),
                      // height: 100,
                      width: 200,
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ])),
    );
  }
}
