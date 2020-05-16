import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutterecom/components/horizontal_listview.dart';
import 'package:flutterecom/pages/cart.dart';

import 'components/products.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("images/c1.jpg"),
          AssetImage("images/m1.jpeg"),
          AssetImage("images/m2.jpg"),
          AssetImage("images/w1.jpeg"),
          AssetImage("images/w3.jpeg"),
          AssetImage("images/w4.jpeg"),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.purpleAccent,
        title: Text('Fashapp'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search,color: Colors.white,),onPressed: (){},),
          IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,),onPressed: (){  Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));},),
        ],
      ),
      drawer:Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purpleAccent,
              ),
              accountName: Text('Emadelddin Juha'),
              accountEmail: Text('emad1.2@hotmail.com'),
              currentAccountPicture: GestureDetector(
                child:CircleAvatar(
                  child: Icon(Icons.person,color: Colors.white,),
                    backgroundColor: Colors.grey
                ),
              ),
            ),
            //body here ----
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page',),
                leading: Icon(Icons.home,color: Colors.purpleAccent,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My account'),
                leading: Icon(Icons.account_box,color: Colors.purpleAccent,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket,color: Colors.purpleAccent,),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
              },
              child: ListTile(
                title: Text('Shopping cart'),
                leading: Icon(Icons.shopping_cart,color: Colors.purpleAccent,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite,color: Colors.purpleAccent,),
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings,color: Colors.purpleAccent,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help,color: Colors.purpleAccent,),
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          //image carousel begins here
          image_carousel,
          //padding widget
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Categories'),
            // Horizontal list view begins here
          ),
          HorizontalList(),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('Recent products'),
            // Horizontal list view begins here
          ),
          Flexible(
            child: Products(),
          ),
        ],
      ),
    );
  }
}
