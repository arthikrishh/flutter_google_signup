import 'package:flutter/material.dart';
import 'package:google_signup_flutter/login_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  final controller = Get.put(LoginController());

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Column(
        children: [
          Container(
            height: 180.0,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 165, 217, 96),
              boxShadow: [BoxShadow(blurRadius: 3.0, color: Colors.green)],
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/google.png',
                      height: 60,
                      width: 60,
                    ),
                    Text(
                      'oogle Signup',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black,
                            letterSpacing: .5,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Obx(() {
            if (controller.googleAccount.value == null) {
              return BuildLoginbtn();
            } else {
              return BuildLoginUi();
            }
          }),
        ],
      )),
    );
  }

  // ignore: non_constant_identifier_names
  Column BuildLoginbtn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 50,
        ),
        Container(
          child: const FlutterLogo(
            size: 200,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
              child: Text(
            'Create your account with google',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  color: Colors.white,
                  letterSpacing: .5,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          )),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          height: 60.0,
          child: GestureDetector(
            onTap: () {
              controller.Login();
            },
            child: Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(
                  color: Color.fromARGB(255, 165, 217, 96),
                  style: BorderStyle.solid,
                  width: 4.0,
                ),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Text(
                      "Google sign in",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.white,
                            letterSpacing: .5,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Column BuildLoginUi() {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 165, 217, 96),
                borderRadius: BorderRadius.circular(150)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: CircleAvatar(
                // backgroundColor:   const Color.fromARGB(255, 165, 217, 96),
                backgroundImage: Image.network(
                        controller.googleAccount.value?.photoUrl ?? '')
                    .image,
                radius: 100,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
            child: Text(
          controller.googleAccount.value?.displayName ?? '',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        )),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(controller.googleAccount.value?.email ?? '',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.normal)),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          height: 50.0,
          child: GestureDetector(
            onTap: () {
              controller.Logout();
            },
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color.fromARGB(255, 165, 217, 96),
                  style: BorderStyle.solid,
                  width: 4.0,
                ),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Text(
                      "Logout",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
