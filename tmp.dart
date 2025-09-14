import 'dart:ui';


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
      appBar: AppBar( 
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: EdgeInsets.all(10),
          child:Image.network(
          'https://raw.githubusercontent.com/nilufdev/Food-App/refs/heads/main/images/menu-w.png', 
        ),),
        
        title: Text('Last Bite'),
        centerTitle: true,
        actions: [ 
          Padding(
            padding: EdgeInsets.all(10),
            child:Image.network(
          'https://raw.githubusercontent.com/nilufdev/Food-App/refs/heads/main/images/bag-w.png'
          ),),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child:Stack(
        
        children: [
          
          
          
          Column(
            children: [
              
              Padding(padding:EdgeInsets. all(20),child:TextField( 
               decoration: InputDecoration( 
                 prefixIcon: Icon(Icons.search),
               
               hintText: 'feeling hungry?',
              
              border: OutlineInputBorder( 
                borderRadius:BorderRadius.circular(50),
              ),
              ),),),
              /*Container(
                height: 38,
                margin: EdgeInsets.only(left: 20, top: 32, right: 20, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    Text('Besom.', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800)),
                    //Image.network('https://flutter4fun.com/wp-content/uploads/2021/09/bag.png')
                  ],
                ),
              ),*/
              Expanded(
                child: ListView(
                  children: [ 
                    FoodCard(
                      bgColor: Colors.yellow,      //bgColor:Color(0xFFD3FCC5),
                      title: 'Mix Salad'),
                  ],
                ),
                
                /*Center(
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) { 
                return MyBox();      
                      }
                  ),
                  /*child: ListView.builder(
                    padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 100),
                    itemBuilder: (context, index) {
                      final juice = juiceList[index];
                      return JuiceWidget(
                        juice,
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => JuiceDetailsPage(juice)));
                        },
                      );
                    },
                    itemCount: juiceList.length,
                  ),*/
                ),*/
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
              child: Container(
               // margin: EdgeInsets.only(left:20,right:20),
                color: Colors.yellow.withOpacity(0.2),
                height: 64,
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                child: BackdropFilter(
                  filter:ImageFilter.blur(sigmaX: 18.0, sigmaY: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.network(
                      'https://raw.githubusercontent.com/nilufdev/Food-App/refs/heads/main/images/home.png'
                      , height: 25),
                      //Image.network('https://flutter4fun.com/wp-content/uploads/2021/09/Search.png'),
                   //Icon(Icons.settings),
                 Image.network(
                  'https://raw.githubusercontent.com/nilufdev/Food-App/refs/heads/main/images/bag-w.png'
                 , height: 25),     //Image.network('https://flutter4fun.com/wp-content/uploads/2021/09/Heart.png'),
                //Icon(Icons.person),  
                   Image.network(
                     'https://raw.githubusercontent.com/nilufdev/Food-App/refs/heads/main/images/profile.png'
                   , height:25),   //Image.network('https://flutter4fun.com/wp-content/uploads/2021/09/account.png'),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),),
    );
  }
}

