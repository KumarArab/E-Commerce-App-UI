import 'package:ecomappui/cart.dart';
import 'package:ecomappui/elements.dart';
import 'package:ecomappui/sizeconfig.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          height: SizeConfig.height,
          width: SizeConfig.width,
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex: 1),
              Text("Sign In", style: Theme.of(context).textTheme.headline1),
              Spacer(flex: 1),
              TextBox(isObsecure: false, label: "Username"),
              TextBox(isObsecure: true, label: "Password"),
              Link(text: "Forgot Password?", color: Color(0xffAAAAAA)),
              SizedBox(height: 20),
              Button(
                  text: "Login",
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (ctx) => Cart()));
                  }),
              Container(
                padding: EdgeInsets.all(20),
                child: Center(
                  child: Text(
                    "or",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(color: Colors.black),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    LoginOption(text: "Facebook", color: Color(0xff2b68bf)),
                    SizedBox(width: 20),
                    LoginOption(text: "Google", color: Colors.black),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Link(text: "Don't have an account?", color: Color(0xffAAAAAA)),
              SizedBox(height: 10),
              Link(text: "Sign up", color: Colors.black),
              Spacer(flex: 2),
            ],
          )),
    );
  }
}
