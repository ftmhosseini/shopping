import 'package:flutter/material.dart';
import 'package:shopping/shopBottomNavigator.dart';

class Store extends StatefulWidget {
  const Store({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.black45, fontFamily: 'Vazir'),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black45,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.shopping_basket,
              color: Colors.black45,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 15,
          children: List.generate(
              15
              // _items.length
              , (int position) {
            return generateItem(context);
          }),
        ),
      ),
      bottomNavigationBar: ShopBottomNavigator(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red[900],
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

Card generateItem(context) {
  return Card(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30))),
    elevation: 4,
    child: InkWell(
      onTap: () {
        // Navigator.of(context).push(
        //     MaterialPageRoute(builder: (context) => DescriptionPage(product)));
      },
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: 130,
                height: 130,
                child: Image.network(
                    "https://res.cloudinary.com/atoms-shoes/image/upload/c_scale,w_1400,q_auto,f_auto/v1622733115/products/shoes/model000/black-white_profile")
                // product.imageUrl),
                ),
            Text(
              "2000",
              // product.price,
              style: TextStyle(
                  fontFamily: "Vazir", color: Colors.red[700], fontSize: 16.0),
            ),
            Text(
              "shoess ",
              // product.productName,
              style: const TextStyle(
                  fontFamily: 'Vazir',
                  color: Color(0xFF575E67),
                  fontSize: 14.0),
            )
          ],
        ),
      ),
    ),
  );
}
