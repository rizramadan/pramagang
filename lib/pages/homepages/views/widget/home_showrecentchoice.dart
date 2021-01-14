import 'package:flutter/material.dart';
import 'package:pramagang/pages/homepages/models/recent_choice.dart';
import 'package:pramagang/pages/homepages/utils/color_utils.dart';
import 'package:pramagang/pages/homepages/utils/constant.dart';
import 'package:pramagang/pages/homepages/utils/string_utils.dart';

class HomeShowRecentChoice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: ListView.builder(
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: recent_choice == null ? 0 : recent_choice.length,
        itemBuilder: (BuildContext context, int index) {
          Map product = recent_choice[index];

          return Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: RecentOrders(
                img: product["img"],
                product_name: product["product_name"],
                quantity: product["quantity"],
                price: product["price"]),
          );
        },
      ),
    );
    ;
  }
}

class RecentOrders extends StatefulWidget {
  final String img;
  final String product_name;
  final String quantity;
  final String price;

  RecentOrders({
    Key,
    key,
    @required this.img,
    @required this.product_name,
    @required this.quantity,
    @required this.price,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RecentOrdersState();
  }
}

class RecentOrdersState extends State<RecentOrders> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: Container(
        width: 150,
        height: 200,
        child: Card(
          elevation: 3.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          child: Column(
            children: <Widget>[
              Container(
                width: 150,
                height: 90,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                  child: Image.asset(
                    "${widget.img}",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 7.0),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    '${widget.product_name}',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: StringUtils.Montserrat,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
