import 'package:flutter/material.dart';
import 'package:pramagang/pages/homepages/models/item.dart';
import 'package:pramagang/pages/homepages/views/show/griditemdetail.dart';

class CardWork extends StatelessWidget {
  final Item item;
  CardWork(this.item);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GridItemDetails(item),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.only(left: 8.0),
        elevation: 0.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height / 8,
              width: MediaQuery.of(context).size.width / 3,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      item.name,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      height: 8.0,
                    ),
                    Text(
                      item.runtime,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.green, fontSize: 12),
                      textAlign: TextAlign.left,
                    )
                  ]),
            ),
            CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 10,
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 16,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  child: Image.asset(
                    item.imageUrl,
                    fit: BoxFit.fill,
                  ),
                  height: MediaQuery.of(context).size.height / 10 * 1.5,
                  width: MediaQuery.of(context).size.width / 2 * 0.75),
            ),
          ],
        ),
      ),
    );
  }
}
