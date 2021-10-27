import 'package:flutter/material.dart';

class ShopBottomNavigator extends StatelessWidget {
  const ShopBottomNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      shape: CircularNotchedRectangle(),
      notchMargin: 10.0,
      clipBehavior: Clip.antiAlias,

      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 50,

              width: MediaQuery.of(context).size.width/2-20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.home,color: Colors.blueGrey[600],),
                  Icon(Icons.person_outline,color: Colors.blueGrey[600],)
                ],
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width/2-20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.search,color: Colors.blueGrey[600],),
                  Icon(Icons.shopping_basket,color: Colors.blueGrey[600],)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
