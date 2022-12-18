import 'package:flutter/material.dart';
import 'package:login_ui/sign_in_button.dart';

import 'input_box.dart';
import 'image_button.dart';

class Login_UI extends StatelessWidget {
  Login_UI({
    Key? key,
  }) : super(key: key);

  TextEditingController user_name = TextEditingController();
  TextEditingController password = TextEditingController();

  //sign user in method
  void sign_in() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                Icon(
                  Icons.lock,
                  color: Colors.black,
                  size: 100,
                ),
                SizedBox(
                  height: 50,
                ),

                //You have been missed
                Text(
                  "Welcome back! You've been missed",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                //username field
                Input_Box(
                  controller: user_name,
                  hint_text: "User Name",
                  obscure_text: false,
                ),

                SizedBox(
                  height: 10,
                ),

                //password field
                Input_Box(
                  controller: password,
                  hint_text: "Password",
                  obscure_text: true,
                ),

                SizedBox(
                  height: 10,
                ),

                //forgot password?
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot password?",
                        style: TextStyle(
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

                //sign in button
                Sign_In_Button(
                  on_pressed: sign_in,
                ),

                SizedBox(
                  height: 50,
                ),

                //or continue sign in with google or apple
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25.0,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                        child: Text(
                          "Or continue with",
                          style: TextStyle(
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  ),
                ),
                //google and apple button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image_Button(
                      on_pressed: () {},
                      image_path: "lib/images/google.png",
                    ),
                    Image_Button(
                      on_pressed: () {},
                      image_path: "lib/images/apple.png",
                    ),
                  ],
                ),

                SizedBox(
                  height: 20.0,
                ),
                //not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a member?",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Register now",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
