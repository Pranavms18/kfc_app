import 'package:flutter/material.dart';
import 'package:kfc_app/utils/constants/color_constants.dart';

class NewChickenrollCard extends StatelessWidget {
  const NewChickenrollCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.feature,
      required this.image,
      required this.price,
      required this.category,
      required this.details});

  final String title;
  final String subtitle;
  final String feature;
  final String image;
  final String price;
  final String category;
  final String details;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            height: 300,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      title,
                      style: TextStyle(
                          color: ColorConstants.mainBlack,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(subtitle),
                    Image(
                      fit: BoxFit.fitHeight,
                      image: NetworkImage(
                        image,
                      ),
                      height: 100,
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(price),
                    SizedBox(
                      width: 5,
                    ),
                    Text(category),
                    Spacer(),
                    Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.red,
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)),
                    height: 47,
                    width: 150,
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          details,
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.add_moderator_outlined)
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
