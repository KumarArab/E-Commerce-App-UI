import 'package:ecomappui/elements.dart';
import 'package:ecomappui/payment.dart';
import 'package:ecomappui/sizeconfig.dart';
import 'package:ecomappui/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Cart extends StatelessWidget {
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
        title: Text("My Cart",
            style: Theme.of(context)
                .textTheme
                .headline2
                .copyWith(color: Style.primaryColor)),
        centerTitle: true,
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
        height: SizeConfig.height,
        width: SizeConfig.width,
        child: ListView(
          children: [
            SizedBox(height: 30),
            CartItem(
              asset: "assets/cycle.png",
              price: "\$3998",
              title: "Comfort bike",
            ),
            CartItem(
              asset: "assets/skateboard.png",
              price: "\$1999",
              title: "Skateboard",
            ),
            Container(
                color: Style.backgroundColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(
                      color: Style.primaryColor,
                      thickness: 5,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Text("Order Summary",
                                style: Theme.of(context).textTheme.headline2),
                          ),
                          ListTile(
                            title: Text("Total Items",
                                style: Theme.of(context).textTheme.subtitle1),
                            trailing: Text("2",
                                style: Theme.of(context).textTheme.subtitle1),
                          ),
                          ListTile(
                            title: Text("Order",
                                style: Theme.of(context).textTheme.subtitle1),
                            trailing: Text("\$5,997",
                                style: Theme.of(context).textTheme.subtitle1),
                          ),
                          ListTile(
                            title: Text("Delivery Fee",
                                style: Theme.of(context).textTheme.subtitle1),
                            trailing: Text("\$50",
                                style: Theme.of(context).textTheme.subtitle1),
                          ),
                          Divider(color: Style.primaryColor),
                          ListTile(
                            title: Text(
                              "Delivery Fee",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .copyWith(color: Style.primaryColor),
                            ),
                            trailing: Text(
                              "\$50",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .copyWith(color: Style.primaryColor),
                            ),
                          ),
                          Button(
                              text: "Check Out",
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => Payment()))),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  final String asset, title, price;
  CartItem({this.asset, this.price, this.title});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        height: SizeConfig.width * 0.5,
        width: SizeConfig.width,
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              width: SizeConfig.width,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: SizeConfig.width * 0.4,
                    height: SizeConfig.width * 0.4,
                    decoration: BoxDecoration(
                      color: Style.secondaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Image.asset(
                        asset,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: SizeConfig.width * 0.45,
                    height: SizeConfig.width * 0.4,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(title,
                              style: Theme.of(context).textTheme.headline2),
                          Spacer(flex: 1),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.amber, size: 20),
                              SizedBox(width: 5),
                              Icon(Icons.star, color: Colors.amber, size: 20),
                              SizedBox(width: 5),
                              Icon(Icons.star, color: Colors.amber, size: 20),
                              SizedBox(width: 5),
                              Icon(Icons.star, color: Colors.amber, size: 20),
                              SizedBox(width: 5),
                              Icon(Icons.star, color: Colors.amber, size: 20),
                              SizedBox(width: 10),
                              Text("(4.0)",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(color: Color(0xffAAAAAA)))
                            ],
                          ),
                          Spacer(flex: 1),
                          Container(
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Price",
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1),
                                    Text(
                                      price,
                                      style: Theme.of(context)
                                          .textTheme
                                          .button
                                          .copyWith(color: Style.primaryColor),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Style.primaryColor
                                            .withOpacity(0.5)),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: Icon(Icons.delete_outline,
                                      color: Style.primaryColor),
                                ),
                                SizedBox(width: 20),
                              ],
                            ),
                          ),
                          Spacer(flex: 2)
                        ]),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(),
          ],
        ));
  }
}
