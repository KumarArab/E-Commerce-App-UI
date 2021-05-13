import 'package:ecomappui/elements.dart';
import 'package:ecomappui/sizeconfig.dart';
import 'package:ecomappui/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Style.primaryColor),
            onPressed: () => Navigator.pop(context),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                border: Border.all(color: Style.primaryColor, width: 3),
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: SvgPicture.asset(
                "assets/shopping-bag.svg",
                height: 20,
                width: 20,
                color: Style.primaryColor,
              ),
            ),
            SizedBox(width: 20),
          ],
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Delivery Address",
                              style: Theme.of(context).textTheme.headline2),
                          Spacer(),
                          Text("Change",
                              style: Theme.of(context).textTheme.subtitle1),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text("Pirmoholla 64 number house, Jalalbad, Sylhet",
                          style: Theme.of(context).textTheme.subtitle1)
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  child: Row(
                    children: [
                      Text("Payment Methods",
                          style: Theme.of(context).textTheme.headline2),
                      Spacer(),
                      Text("Add +",
                          style: Theme.of(context).textTheme.subtitle1),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Style.backgroundColor, width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    leading: SvgPicture.asset(
                      "assets/paypal.svg",
                      height: 20,
                      width: 20,
                    ),
                    title: Text(
                      "Paypal",
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          .copyWith(color: Style.primaryColor),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Style.backgroundColor, width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    leading: SvgPicture.asset(
                      "assets/mastercard.svg",
                      height: 20,
                      width: 20,
                    ),
                    trailing:
                        Icon(Icons.check_circle, color: Style.primaryColor),
                    title: Text(
                      "MasterCard",
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          .copyWith(color: Style.primaryColor),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text("Card Details",
                        style: Theme.of(context).textTheme.headline2),
                  ],
                ),
                SizedBox(height: 30),
                TextBox(isObsecure: false, label: "Card Name"),
                TextBox(isObsecure: true, label: "Card Number"),
                Container(
                    width: SizeConfig.width,
                    child: Row(
                      children: [
                        Expanded(
                          child:
                              TextBox(isObsecure: false, label: "Valid Thru"),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: TextBox(isObsecure: true, label: "CVC"),
                        ),
                      ],
                    )),
                SizedBox(height: 20),
                Button(
                  text: "Send Order",
                  onPressed: () {},
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ));
  }
}
