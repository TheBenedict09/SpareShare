import 'package:flutter/material.dart';
//import 'package:spareshare/utils/constants/Image_string.dart';

class TcaraouselImage extends StatelessWidget {
  final String imageUrl;

  const TcaraouselImage({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 200,
      decoration: BoxDecoration(
          // boxShadow: [BoxShadow(blurRadius: 10, spreadRadius: 0.5)],
          color: Colors.grey,
          borderRadius: BorderRadius.circular(21)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(21),
        child: Image(
          image: AssetImage(imageUrl),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
