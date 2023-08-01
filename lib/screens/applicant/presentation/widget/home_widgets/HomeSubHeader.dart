import 'package:flutter/material.dart';
import 'package:jobhunt/config/themes/Constants.dart';
import 'package:jobhunt/screens/applicant/presentation/widget/home_widgets/SearchControl.dart';
import 'package:jobhunt/screens/applicant/presentation/widget/home_widgets/SearchTag.dart';

class HomeSubHeader extends StatelessWidget {
  const HomeSubHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kSpacingUnit * 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Expanded(
                child: SearchControl(),
              ),
            ],
          ),
          SizedBox(height: kSpacingUnit * 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              SearchTag(tag: 'Categories'),
              SearchTag(tag: 'All Jobs'),
              SearchTag(tag: 'Companies'),
            ],
          )
        ],
      ),
    );
  }
}
