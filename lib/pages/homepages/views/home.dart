import 'package:flutter/material.dart';
import 'package:pramagang/pages/homepages/utils/color_utils.dart';
import 'package:pramagang/pages/homepages/utils/string_utils.dart';
import 'package:pramagang/tampilan/Appbar.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:pramagang/pages/homepages/views/home_shopbycategory.dart';
import 'package:pramagang/pages/homepages/views/home_recentorders.dart';
import 'package:pramagang/pages/homepages/utils/constant.dart';
import 'package:pramagang/pages/homepages/views/show/showscreen.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<StatefulWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: ColorsUtils.HomeBgColor,
        body: showBody());
  }

  Widget image_carousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('assets/offer/offer1.jpg'),
        AssetImage('assets/offer/offer2.jpg'),
        AssetImage('assets/offer/offer3.jpg'),
        AssetImage('assets/offer/offer4.jpg'),
        AssetImage('assets/offer/offer5.jpg'),
      ],
      autoplay: true,
      animationCurve: Curves.fastLinearToSlowEaseIn,
      animationDuration: Duration(milliseconds: 1000),
      dotSize: 4.0,
      indicatorBgPadding: 2.0,
    ),
  );

  Widget showBody() {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: ListView(
        children: <Widget>[
          image_carousel,
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
            child: Text(
              StringUtils.SearchByCategory,
              style: TextStyle(
                  color: ColorsUtils.Black,
                  fontSize: 20.0,
                  fontFamily: StringUtils.Montserrat,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(height: 20.0),
          HomeShopByCategory(),
          SizedBox(height: 5.0),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  StringUtils.Your_Choice,
                  style: TextStyle(
                      color: ColorsUtils.Black,
                      fontSize: 20.0,
                      fontFamily: StringUtils.Montserrat,
                      fontWeight: FontWeight.w700),
                ),
                FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShowScreen()));
                    },
                    child: Text(
                      StringUtils.Show_All,
                      style: TextStyle(
                          color: ColorsUtils.PrimaryColor,
                          fontSize: 18.0,
                          fontFamily: StringUtils.Montserrat,
                          fontWeight: FontWeight.w400),
                    ))
              ],
            ),
          ),
          ServiceCards(),
        ],
      ),
    );
  }

}
