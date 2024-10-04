import 'package:flutter/material.dart';
import 'package:kfc_app/utils/constants/color_constants.dart';

class browse_categories_card extends StatelessWidget {
  final String image;
  final String itemName;
  browse_categories_card({
    required this.image,
    required this.itemName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 236, 221, 221),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(
            child: Image(
              height: 100,
              image: NetworkImage(image),
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            itemName,
            style: TextStyle(
                color: ColorConstants.mainBlack,
                fontSize: 15,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
