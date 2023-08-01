import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobhunt/config/themes/Palette.dart';
import 'package:jobhunt/config/themes/SizeConfig.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Palette.primaryColor,
              fontSize: getProportionateScreenWidth(25),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            image,
            height: getProportionateScreenHeight(400),
            width: getProportionateScreenWidth(400),
            // color: Colors.transparent,
          ),
        ),
      ],
    );
  }
}
