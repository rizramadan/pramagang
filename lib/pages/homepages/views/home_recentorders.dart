import 'package:flutter/material.dart';
import 'package:pramagang/pages/homepages/utils/work.dart';

class ServiceCards extends StatefulWidget {
  @override
  _MyCardsState createState() => _MyCardsState();
}

class _MyCardsState extends State<ServiceCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CardWork('PT TELKOM', '47 lowongan',
                'https://i.postimg.cc/sgNrskHF/telkom.jpg'),
            Divider(),
            CardWork('PT PLN PERSERO', '116 lowongan',
                'https://i.postimg.cc/13NWVb51/pln.jpg'),
            Divider(),
            CardWork('PT UNILEVER', '56 lowongan',
                'https://i.postimg.cc/cHTTNSTw/unilever.jpg'),
            Divider(),
            CardWork('PT BCA', '156 lowongan',
                'https://i.postimg.cc/QCwQXx79/bca.jpg'),
            Divider(),
            CardWork('PT INDOCEMENT', '119 lowongam',
                'https://i.postimg.cc/L8ztpS85/indocement.jpg'),
            Divider(),
          ],
        ),
      ),
    );
  }
}
