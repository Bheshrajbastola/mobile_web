import 'package:flutter/material.dart';
import 'package:jobhunt/screens/employer/data/model/Job.dart';
import 'package:jobhunt/screens/applicant/presentation/widget/home_widgets/job_details/DetailContent.dart';
import 'package:jobhunt/screens/applicant/presentation/widget/home_widgets/job_details/DetailFooter.dart';
import 'package:jobhunt/screens/applicant/presentation/widget/home_widgets/job_details/DetailHeader.dart';

class DetailScreen extends StatefulWidget {
  final Job data;

  const DetailScreen({Key? key, required this.data}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                DetailHeader(data: widget.data),
                DetailContent(data: widget.data),
              ],
            ),
            DetailFooter(
              data: widget.data,
            ),
          ],
        ),
      ),
    );
  }
}
