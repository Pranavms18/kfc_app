import 'package:flutter/material.dart';
import 'package:kfc_app/utils/constants/color_constants.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Text("Sign in/ Sign up"),
              SizedBox(
                height: 40,
              ),
              Text(
                "KFC",
                style: TextStyle(
                    color: Color.fromARGB(255, 233, 19, 4),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "LET'S SIGN IN OR CREATE ACCOUT WITH YOUR "
                "\n PHONE NUMBER!",
                style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 45,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "phone number"),
                // focusNode: FocusNode(debugLabel: "phone number"),
                // controller: TextEditingController(text: "phone number"),
              ),

              SizedBox(
                height: 8,
              ),
              Text(
                  "By logging in to KFC, you agree to our privacy policy and \n Terms and Conditions"),
              SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  decoration: BoxDecoration(
                      color: ColorConstants.mainBlack,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Send me a code",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Spacer(),
              // Row(
              //   children: [Divider(), Text("Or"), Divider()],
              // )
            ],
          ),
        ),
      )),
    );
  }
}
