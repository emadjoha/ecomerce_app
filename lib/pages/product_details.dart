import 'package:flutter/material.dart';
import 'package:flutterecom/components/products.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  const ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.purpleAccent,
        title: Text('Fashapp'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search,color: Colors.white,),onPressed: (){},),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 320,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.product_detail_name,style: TextStyle(fontWeight: FontWeight.bold),),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('\$${widget.product_detail_old_price}',style: TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),),
                      ),
                      Expanded(
                        child: Text('\$${widget.product_detail_new_price}',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.red),),
                      )
                    ],
                  ),
                ),
              ),
            ),
            color: Colors.purpleAccent,
          ),
          Row(children: <Widget>[
            Expanded(
              child: MaterialButton(
                onPressed: (){
                  showDialog(context: context,builder: (context){
                    return AlertDialog(
                      title: Text('Size'),
                      content: Text('choose the size'),
                      actions: <Widget>[
                        MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },child: Text('close'),)
                      ],
                    );
                  });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(child: Text('Size')),
                    Expanded(child: Icon(Icons.arrow_drop_down))
                  ],
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: (){
                  showDialog(context: context,builder: (context){
                    return AlertDialog(
                      title: Text('Colors'),
                      content: Text('choose the a color'),
                      actions: <Widget>[
                        MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },child: Text('close'),)
                      ],
                    );
                  });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(child: Text('Color')),
                    Expanded(child: Icon(Icons.arrow_drop_down))
                  ],
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: (){
                  showDialog(context: context,builder: (context){
                    return AlertDialog(
                      title: Text('Quantity'),
                      content: Text('choose the a quantity'),
                      actions: <Widget>[
                        MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },child: Text('close'),)
                      ],
                    );
                  });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(child: Text('Qty')),
                    Expanded(child: Icon(Icons.arrow_drop_down))
                  ],
                ),
              ),
            )
          ],
          ),


          Row(children: <Widget>[
            Expanded(
              child: MaterialButton(
                onPressed: (){},
                color: Colors.red,
                textColor: Colors.white,
                elevation: 0.2,
                child:  Text('Buy Now')
              ),
            ),
            IconButton(icon: Icon(Icons.add_shopping_cart),color: Colors.red,onPressed: (){},),
            IconButton(icon: Icon(Icons.favorite_border),color: Colors.red,onPressed: (){},)
          ],
          ),
          Divider(color: Colors.purpleAccent,),
          ListTile(
            title: Text("Product details"),
            subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),child: Text("Product Name",style: TextStyle(color: Colors.purpleAccent),),),
              Padding(padding: EdgeInsets.all(5.0),child: Text(widget.product_detail_name),),

            ],
          ), Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),child: Text("Product Brand",style: TextStyle(color: Colors.purpleAccent),),),
              Padding(padding: EdgeInsets.all(5.0),child: Text("Brand X"),),
            ],
          ), Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),child: Text("Product condition",style: TextStyle(color: Colors.purpleAccent),),),
              Padding(padding: EdgeInsets.all(5.0),child: Text("NEW"),),
            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Similar products'),
          ),
          Container(
            height: 360,
            child: SimilarProducts(),
          )
        ],
      ),
    );
  }
}
class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  final product_list = [
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
