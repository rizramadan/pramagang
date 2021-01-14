import 'package:flutter/material.dart';
import 'package:pramagang/pages/homepages/utils/color_utils.dart';
import 'package:pramagang/pages/homepages/utils/string_utils.dart';
import 'package:pramagang/pages/homepages/views/widget/home_searchbycategory.dart';
import 'package:pramagang/pages/homepages/views//widget/home_showrecentchoice.dart';
import 'package:carousel_pro/carousel_pro.dart';


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
    return Scaffold(backgroundColor: ColorsUtils.HomeBgColor, body: showBody());
  }

  Widget image_carousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('assets/homeimage/offer/Offer1.jpg'),
        AssetImage('assets/homeimage/offer/Offer2.jpg'),
        AssetImage('assets/homeimage/offer/Offer3.jpg'),
        AssetImage('assets/homeimage/offer/Offer4.jpg'),
        AssetImage('assets/homeimage/offer/Offer5.jpg'),
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
          HomeSearchByCategory(),
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
                    onPressed: _showAllBtnTapped,
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
          HomeShowRecentChoice(),
        ],
      ),
    );
  }

  Widget _showAllBtnTapped() {}
}
