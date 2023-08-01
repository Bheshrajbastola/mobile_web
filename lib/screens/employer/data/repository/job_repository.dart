import 'package:jobhunt/core/shared_preference/jobResponse/applied_jobs_response.dart';
import 'package:jobhunt/core/shared_preference/jobResponse/dashboard_jobs_response.dart';
import 'package:jobhunt/core/shared_preference/jobResponse/get_jobs_response.dart';
import 'package:jobhunt/screens/employer/data/datasource/job_api.dart';


class JobsRepository {
  Future<JobsResponse?> getAllJobs() async {
    return await JobsAPI().getAllJobs();
  }

  Future<AppliedJobsResponse?> getAppliedJobs() async {
    return await JobsAPI().getAppliedJobs();
  }

  Future<DashboardJobsResponse?> getDashboardJobs() async {
    return await JobsAPI().getDashboardJobs();
  }

  Future<bool?> applyForJob(String jobID) async {
    return await JobsAPI().applyForJob(jobID);
  }
}
