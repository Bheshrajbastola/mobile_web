import 'package:flutter_test/flutter_test.dart';
import 'package:jobhunt/core/shared_preference/LoginResponse.dart';
import 'package:jobhunt/screens/auth/data/model/Education.dart';
import 'package:jobhunt/screens/auth/data/model/Users.dart';
import 'package:jobhunt/screens/auth/data/model/Work.dart';
import 'package:jobhunt/screens/auth/data/repository/UserRepository.dart';

void main() {
  late User user;

  setUp(() {
    user = User();
  });

  group("Login Test", () {


    test("Login Test Pass", () async {
      user.username = "raj";
      user.password = "1234";

      LoginResponse? actualResult = await UserRepository().loginUser(user);

      bool expectedResult = true;

      expect(actualResult!.success, expectedResult);
    });

    
    test("Login Test Fail", () async {
      user.username = "raj";
      user.password = "12345";

      LoginResponse? actualResult = await UserRepository().loginUser(user);
      bool expectedResult = true;

      expect(actualResult!.success, expectedResult);
    });
  });










  group("Register Test", () {
    test("Register Test Pass", () async {
      user.firstName = "raj";
      user.lastName = "bastola";
      user.username = "raj";
      user.password = "1234";
      user.email = "bheshraj@gmail.com";
      user.phone = "123456789";
      user.type = "Applicant";
      user.gender = "Male";

      user.title = "Backend Developer";
      user.skills = ["Dart", "Flutter", "Backend"];
      user.summary = "I am a backend developer";
      user.educationSet = [
        Education(
          degree: "Test Tes",
          college: "Softwarica",
          startDate: "2020",
          endDate: "2021",
        )
      ];

      user.workSet = [
        Work(
            job_title: "Test",
            company: "Softwarica",
            startDate: "2020",
            endDate: "2021",
            company_location: "Nepal",
            work_type: "Full Time")
      ];

      bool actualResult = await UserRepository().registerUser(user);
      bool expectedResult = true;

      expect(actualResult, expectedResult);
    });




    test("Register Test Fail", () async {
      user.firstName = "raj";
      user.lastName = "bastola";
      user.username = "raj1";
      user.password = "1234";
      user.email = "bheshrajbastola3@gmail.com";
      user.phone = "123456789";
      user.type = "Applicant";
      user.gender = "Male";

      user.title = "Backend Developer";
      user.skills = ["Dart", "Flutter", "Backend"];
      user.summary = "I am a backend developer";
      user.educationSet = [
        Education(
          degree: "Test Tes",
          college: "Softwarica",
          startDate: "2020",
          endDate: "2021",
        )
      ];

      user.workSet = [
        Work(
            job_title: "Test",
            company: "Softwarica",
            startDate: "2020",
            endDate: "2021",
            company_location: "Nepal",
            work_type: "Full Time")
      ];

      bool actualResult = await UserRepository().registerUser(user);
      bool expectedResult = true;

      expect(actualResult, expectedResult);
    });
  });
  
}
