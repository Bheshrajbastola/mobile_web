import 'package:flutter_test/flutter_test.dart';
import 'package:jobhunt/core/shared_preference/LoginResponse.dart';
import 'package:jobhunt/core/shared_preference/jobResponse/applied_jobs_response.dart';
import 'package:jobhunt/core/shared_preference/jobResponse/get_jobs_response.dart';
import 'package:jobhunt/screens/auth/data/model/Users.dart';
import 'package:jobhunt/screens/auth/data/repository/UserRepository.dart';
import 'package:jobhunt/screens/employer/data/datasource/job_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  late User user;
  String jobId = "64c3c4b6eec4a2d097497497";
  SharedPreferences prefs;
  late JobsAPI api;

  setUp(() async {
    api = JobsAPI();
    user = User();
    jobId = "64c3c4b6eec4a2d097497497";
    user.username = "raj";
    user.password = "1234";
    prefs = await SharedPreferences.getInstance();
    LoginResponse? login = await UserRepository().loginUser(user);
    prefs.setString("token", login!.token!);
  });

  group("Job Apply Test", () {
    test("Job Apply Test Fail", () async {
      prefs = await SharedPreferences.getInstance();
      bool expectedResult = true;
      bool actualResult = await api.applyForJob(jobId);
      expect(actualResult, expectedResult);
    });
    test("Job Apply Test Pass", () async {
      bool expectedResult = false;
      bool actualResult = await api.applyForJob(jobId);
      expect(actualResult, expectedResult);
    });
  });

  group("Job Fetch Test", () {
    test("Fetch Test Pass", () async {
      bool expectedResult = true;
      JobsResponse? actualResult = await api.getAllJobs();

      expect(actualResult!.success, expectedResult);
    });
  });

  group("Applied Jobs Fetch Test", () {
    test("Apply Fetch Test Pass", () async {
      bool expectedResult = true;
      AppliedJobsResponse? res = await api.getAppliedJobs();
      bool actualResult = res?.success ?? true;

      expect(actualResult, expectedResult);
    });
    test("Apply Fetch Test Fail", () async {
      prefs = await SharedPreferences.getInstance();
      prefs.clear();
      bool expectedResult = false;
      AppliedJobsResponse? res = await api.getAppliedJobs();
      bool actualResult = res!.success ?? false;

      expect(actualResult, expectedResult);
    });
  });

  tearDown() async {
    prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }
}
