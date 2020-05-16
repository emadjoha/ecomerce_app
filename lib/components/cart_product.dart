import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  final products_on_the_cart = [
    {
      'name': 'Blazer',
      'picture': 'images/products/blazer1.jpeg',
      'price': 85,
      'size': 'M',
      'color': 'Red',
      'quantity': 1
    },
    {
      'name': 'Blazer1',
      'picture': 'images/products/blazer1.jpeg',
      'price': 83,
      'size': 'N',
      'color': 'Blue',
      'quantity': 3
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: products_on_the_cart.length,
        itemBuilder: (context, index) {
          return SingleCartProduct(
            cart_prod_name: products_on_the_cart[index]['name'],
            cart_prod_picture: products_on_the_cart[index]['picture'],
            cart_prod_price: products_on_the_cart[index]['price'],
            cart_prod_size: products_on_the_cart[index]['size'],
            cart_prod_color: products_on_the_cart[index]['color'],
            cart_prod_quantity: products_on_the_cart[index]['quantity'],
          );
        });
  }
}

class SingleCartProduct extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_quantity;

  const SingleCartProduct(
      {this.cart_prod_name,
      this.cart_prod_picture,
      this.cart_prod_price,
      this.cart_prod_size,
      this.cart_prod_color,
      this.cart_prod_quantity});

  @override
  Widget build(BuildContext context) {
    return
      Center(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
               ListTile(
                leading: Image.asset(cart_prod_picture,height: 180,),
                title: Text(cart_prod_name),
                subtitle:  Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Text("Size:"),
                      ),
                      Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Text(
                          cart_prod_size,
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Color"),
                      ),
                      Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(cart_prod_color,
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "\$${cart_prod_price}",
                      style: TextStyle(color: Colors.red),
                    ),
                  )
                ],
              ),
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: IconButton(icon:Icon(Icons.arrow_left, size: 50)),
                    onPressed: () {/* ... */},
                  ),
                  FlatButton(
                    child: Text("3",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  FlatButton(
                    child: IconButton(icon:Icon(Icons.arrow_right, size: 50)),
                    onPressed: () {/* ... */},
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  }
}
