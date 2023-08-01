import 'package:flutter/material.dart';
import 'package:jobhunt/config/themes/Palette.dart';
import 'package:jobhunt/config/themes/SizeConfig.dart';

class defaultButton extends StatelessWidget {
  const defaultButton({Key? key, required this.text, required this.press})
      : super(key: key);
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      onPressed: press,
      child: Text(
        text,
        style: TextStyle(
          fontSize: getProportionateScreenWidth(18),
          color: Colors.white,
        ),
      ),
      color: Palette.primaryColor,
    );
  }
}
