






// AppBar
// Search Bar
// Horizontal Scrolling (Categories)
// Vertical Scrolling (Food Cards)
// Food Details Page

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodDetails(),
    );
  }
}

class FoodDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      body: Expanded(child:ListView(
        
        children: [
          Container(
            //color: Colors.
            margin: EdgeInsets.only(top:80, right:40),
            
            child:Image.network(
            'https://raw.githubusercontent.com/nilufdev/Food-App/refs/heads/main/images/ice-cream.png', height: 200,
          ),),
          Expanded(child: 
                   ClipRRect(borderRadius: BorderRadius.only(topLeft:
                                                             Radius.circular(30),topRight:Radius.circular(30),),child:Container (
                     padding: EdgeInsets.all(40),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Ice Cream Bucket', style:TextStyle(
                    fontSize: 25,fontWeight:FontWeight.bold),),
                    Icon(Icons.favorite_outline_outlined),
                  ],
                ),
                Row(children:[Text('Cold', style: TextStyle(color: Colors.grey),),
            SizedBox(width:10), Text('4.3'),       Icon(Icons.star_outline, size:20),         
                             ]),
                
              SizedBox(height: 30),
              Text(
              'Description',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
                SizedBox(height: 10),
              Text(
               'Trio Treat Bucket, a delightful combination of three classic ice cream flavors. Dive into the sweet and tangy notes of Strawberry, savor the rich and creamy goodness of Chocolate, and enjoy the caramel-like sweetness of Butterscotch. Perfect for sharing or for treating yourself to a little bit of everything',style:TextStyle(
                color: Colors.grey[800],
               ),
              ),
              SizedBox(height: 20),
              Row(
                
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children:[
              Row( children: [
                 Text('120',style:TextStyle(
                   fontWeight: FontWeight.bold,
                 ),),
                 Icon(Icons.currency_rupee_outlined,size:15),
               ],),
              
              ClipRRect(borderRadius:BorderRadius.all(Radius.circular(100),),child:Container(color: Colors.yellow, padding:EdgeInsets.all(20),child:Text('Add to Cart',style:TextStyle(
              fontWeight: FontWeight.bold,
              )),),),
              ],),
            
          ],),),),
        ),
      ],
    ),),);
  }
}




