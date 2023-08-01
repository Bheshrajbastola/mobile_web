// import 'package:flutter/material.dart';
// import 'package:jobhunt/config/themes/Constants.dart';
// import 'package:jobhunt/core/shared_preference/jobResponse/get_jobs_response.dart';
// import 'package:jobhunt/screens/employer/data/model/Job.dart';
// import 'package:jobhunt/screens/employer/data/repository/job_repository.dart';
// import 'package:jobhunt/screens/applicant/presentation/widget/home_widgets/JobCard.dart';

// class FilterJob extends StatelessWidget {
//   const FilterJob({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<JobsResponse?>(
//         future: JobsRepository().getAllJobs(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             if (snapshot.hasData) {
//               List<Job> lstJobs = snapshot.data!.data!;
//               return ListView.builder(
//                 shrinkWrap: true,
//                 itemCount: lstJobs.length,
//                 physics: const NeverScrollableScrollPhysics(),
//                 itemBuilder: (context, index) {
//                   return Column(
//                     children: [
//                       JobCard(
//                         data: lstJobs[index],
//                         uniqueIdentifier: "filter",
//                       ),
//                       SizedBox(height: kSpacingUnit * 2),
//                     ],
//                   );
//                 },
//               );
//             }
//             return const Text("No Jobs Found");
//           } else if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           } else {
//             return const Text("Error retriving data");
//           }
//         });
//   }
// }
