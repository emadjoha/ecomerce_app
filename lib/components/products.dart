import 'package:flutter/material.dart';
import 'package:flutterecom/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Red dewss",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red x",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red y",
      "picture": "images/products/hills1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red z",
      "picture": "images/products/hills2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red b",
      "picture": "images/products/skt1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red u",
      "picture": "images/products/skt2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red o",
      "picture": "images/products/dress2.jpeg",
      "old_price": 100,
      "price": 50,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            product_name: product_list[index]['name'],
            product_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final product_name;
  final product_picture;
  final prod_old_price;
  final prod_price;

  const Single_prod(
      {this.product_name,
      this.product_picture,
      this.prod_old_price,
      this.prod_price});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(
            onTap: ()=>Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>
                new ProductDetails(
                 product_detail_name:product_name,
                 product_detail_new_price:prod_price,
                 product_detail_old_price:prod_old_price,
                 product_detail_picture:product_picture,
                ),),),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: Row(children: <Widget>[
                  Expanded(
                    child: Text(product_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                  ),Text('\$${prod_price}',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                ],)

//                ListTile(
//                  leading: Text(
//                    product_name,
//                    style: TextStyle(fontWeight: FontWeight.bold),
//                  ),
//                  title: Text(
//                    "\$${prod_price}",
//                    style: TextStyle(
//                        color: Colors.red, fontWeight: FontWeight.w800),
//                  ),
//                  subtitle: Text(
//                    "${prod_old_price}",
//                    style: TextStyle(
//                        color: Colors.black54, fontWeight: FontWeight.w800,decoration: TextDecoration.lineThrough)
//                  ),
//                ),
              ),
              child: Image.asset(
                product_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
