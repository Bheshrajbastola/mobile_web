import 'package:flutter/material.dart';
import 'package:jobhunt/config/themes/Constants.dart';
import 'package:jobhunt/config/themes/SizeConfig.dart';
import 'package:jobhunt/screens/applicant/presentation/widget/home_widgets/HomePopularJobs.dart';
import 'package:jobhunt/screens/applicant/presentation/widget/home_widgets/HomeRecentJobs.dart';

class JobWidget extends StatelessWidget {
  const JobWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
          color: kSilver,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(getProportionateScreenWidth(45)),
            topRight: Radius.circular(getProportionateScreenWidth(45)),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: getProportionateScreenHeight(50),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenHeight(22),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular Jobs",
                        style: kSubtitleStyle.copyWith(
                          fontSize: getProportionateScreenWidth(18),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "View All",
                        style: kSubtitleStyle.copyWith(
                          color: Colors.grey,
                          fontSize: getProportionateScreenWidth(16),
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ]),
              ),
              HomePopularJobs(),
              SizedBox(
                height: getProportionateScreenHeight(5),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenHeight(22),
                ),
                child: Text(
                  "Recent Jobs",
                  style: kBoldStyle.copyWith(fontSize: 17),
                ),
              ),
              const HomeRecentJobs()
            ],
          ),
        ),
      ),
    );
  }
}
