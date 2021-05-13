import 'package:ecomappui/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Link extends StatelessWidget {
  final String text;
  final Color color;

  Link({this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.subtitle1.copyWith(color: color),
          ),
          Spacer()
        ],
      ),
    );
  }
}

class LoginOption extends StatelessWidget {
  final String text;
  final Color color;

  LoginOption({this.text, this.color});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Style.backgroundColor,
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: Theme.of(context).textTheme.button.copyWith(
                color: color,
              ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String text;
  final Function onPressed;
  Button({@required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        color: Color(0xff455A6F),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }
}

class TextBox extends StatelessWidget {
  final String label;
  final bool isObsecure;
  final TextEditingController controller;

  TextBox({this.controller, this.isObsecure, this.label});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30, bottom: 10),
      child: TextField(
        obscureText: isObsecure,
        controller: controller,
        cursorColor: Colors.black,
        style: GoogleFonts.openSans(),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: GoogleFonts.openSans(color: Color(0xffA4A4A4)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Style.backgroundColor, width: 2),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Style.backgroundColor,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
