import 'package:flutter/material.dart';

class title_profilecard extends StatelessWidget {
  const title_profilecard({
    required this.image,
    super.key,
  });
  final image;

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 200,
        child:
            Image(fit: BoxFit.cover, width: 400, image: NetworkImage(image)));
  }
}
