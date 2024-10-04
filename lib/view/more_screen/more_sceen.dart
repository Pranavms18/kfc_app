import 'package:flutter/material.dart';
import 'package:kfc_app/utils/constants/color_constants.dart';
import 'package:kfc_app/view/more_screen/widget/get_help_screen.dart';

class MoreSceen extends StatelessWidget {
  const MoreSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Center(
                child: Text(
              "KFC",
              style: TextStyle(
                  color: Color.fromARGB(255, 233, 19, 4),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 5,
            ),
            Divider(),
            ListTile(
              minTileHeight: 40,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GetHelpScreen(),
                    ));
              },
              leading: Text(
                "GET HELP",
                style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              minTileHeight: 40,
              leading: Text(
                "OFFERS & DEALS",
                style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              minTileHeight: 40,
              leading: Text(
                "ORDER LOOKUP",
                style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              minTileHeight: 40,
              leading: Text(
                "GIFT CARDS",
                style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              minTileHeight: 40,
              leading: Text(
                "FIND A KFC",
                style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              minTileHeight: 40,
              leading: Text(
                "NUTRITION & ALLERGENS",
                style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              minTileHeight: 40,
              leading: Text(
                "KFC INDIA",
                style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
              trailing: Icon(Icons.keyboard_arrow_down),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
