import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jobhunt/screens/applicant/presentation/viewmodel/ApplicantMainScreen.dart';
import 'package:jobhunt/screens/auth/presentation/view/Login.dart';

void main() {

  testWidgets("Login Widget Test", (WidgetTester test) async {
    await test.pumpWidget(
      const MaterialApp(
        title: "Arithmetic",
        home: LoginScreen(),
      ),
    );
    Finder usernameText = find.byKey(const ValueKey("txtUsername"));
    await test.enterText(usernameText, "raj");
    Finder passwordText = find.byKey(const ValueKey("txtPassword"));
    await test.enterText(passwordText, "1234");

    Finder btnLogin = find.byKey(const ValueKey("btnLogin"));
    await test.tap(btnLogin);
    await test.pump();
    expect(find.text("raj"), findsOneWidget);
  });


  testWidgets("Login Screen Test", (WidgetTester test) async {
    await test.pumpWidget(
      const MaterialApp(
        title: "Arithmetic",
        home: LoginScreen(),
      ),
    );

    Finder usernameText = find.byKey(const ValueKey("txtUsername"));
    await test.enterText(usernameText, "raj");
    Finder passwordText = find.byKey(const ValueKey("txtPassword"));
    await test.enterText(passwordText, "1234");

    Finder btnLogin = find.byKey(const ValueKey("btnLogin"));
    await test.tap(btnLogin);
    await test.pumpAndSettle();

    expect(find.text("continue"), findsNothing);
  });







testWidgets("Home Page Test", (WidgetTester test) async {
    await test.pumpWidget(
      const MaterialApp(
        title: "Arithmetic",
        home: LoginScreen(),
      ),
    );

    Finder usernameText = find.byKey(const ValueKey("txtUsername"));
    await test.enterText(usernameText, "raj");
    Finder passwordText = find.byKey(const ValueKey("txtPassword"));
    await test.enterText(passwordText, "1234");

    Finder btnLogin = find.byKey(const ValueKey("btnLogin"));
    await test.tap(btnLogin);
    await test.pumpAndSettle();
    expect(find.byKey(const ValueKey("homeBanner")), findsOneWidget);
    // expect(find.text("View All"), findsWidgets);

  });
}






  

