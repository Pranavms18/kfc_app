import 'package:flutter/material.dart';
import 'package:kfc_app/utils/constants/color_constants.dart';

class offer_card extends StatelessWidget {
  const offer_card({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.details,
    required this.offer,
  });

  final String image;
  final String title;
  final String subtitle;
  final String details;
  final String offer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Container(
        color: Colors.white,
        height: 200,
        child: Column(
          children: [
            Image(
                fit: BoxFit.fill,
                image: NetworkImage(
                  image,
                ),
                // height: 200,
                width: 260),
            SizedBox(
              height: 12,
            ),
            Text(
              title,
              style: TextStyle(
                  color: Color.fromARGB(255, 247, 20, 4),
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              subtitle,
              style: TextStyle(color: ColorConstants.mainBlack),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(details),
                SizedBox(
                  width: 55,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorConstants.mainBlack),
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(offer),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
