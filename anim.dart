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
      body: Column(
        
        children: [
          
          Container(
            width: double.infinity,
            //color: Colors.red,
            margin: EdgeInsets.only(top:80, left:20),
            
            child:Stack(
              children: [Image.network(
           'https://raw.githubusercontent.com/nilufdev/Food-App/refs/heads/main/images/ice-cream.png', height: 200,
          ),
          
            ],
          ),
          ),
          Expanded(child: 
                   ClipRRect(borderRadius: BorderRadius.only(topLeft:
                                                             Radius.circular(30),topRight:Radius.circular(30),),child:Container (
                     padding: EdgeInsets.all(40),
            color: Colors.white,
            child: ListView(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Ice Cream Bucket', style:TextStyle(
                    fontSize: 25,fontWeight:FontWeight.bold),),
                    Icon(Icons.favorite_outline_outlined),
                  ],
                ),
                Row(children:[Text('Rating', style: TextStyle(color: Colors.grey),),
            SizedBox(width:10), Text('4.3',style:TextStyle(fontWeight:FontWeight.bold),),       Icon(Icons.star,color:Colors.blue, size:20),         
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
             Capsule(
               label: 'FAT',
               percentage: 12,
               //unit: 'g',
               fillColor: Colors.green.shade400,
             ),
                SizedBox(height:10),
              Capsule(
                label: 'SUGAR',
                percentage: 15,
                //unit: 'g',
                fillColor: Colors.red.shade400,
              ),
              SizedBox(height: 10),
                Capsule(
                  label: 'CALORIES',
                  //unit: 'kcal',
                 percentage: 10,
                 fillColor: Colors.blue.shade400,
                ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children:[
              Row( children: [
                 Text('120',style:TextStyle(
                   fontSize: 18,
                   fontWeight: FontWeight.bold,
                 ),),
               Icon(Icons.currency_rupee_outlined,
                    size:20),
               ],),
     ClipRRect(borderRadius:BorderRadius.all(Radius.circular(100),),child:Container(color:Colors.yellow, padding:EdgeInsets.all(15),child:Text('Add to Cart',style:TextStyle(
              fontWeight: FontWeight.bold,
              )),),),
              ],),
            
          ],),),),
        ),
      ],
    ),);
  }
}
class Capsule extends StatefulWidget {
  final String label;
  final double percentage;
  final Color fillColor;
  Capsule({
    required this.label,
    required this.percentage,
    required this.fillColor,
  });
  @override
  State<Capsule> createState() {
    return _Capsule();
  }
}

class _Capsule extends State<Capsule> {
  double _width = 0;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        setState(() {
          _width =
              MediaQuery.of(context).size.width * (widget.percentage / 100);
          //_dur = 800;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 20,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          height: 20,
          width: _width,
          color: widget.fillColor,
        ),
      ),
      Positioned(
        left: 5,
        child: Text(
          '${widget.percentage}%',
          style: TextStyle(
            color: Colors.white,
            //fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Positioned(
        right: 20,
        child: Text(
          widget.label,
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ]);
  }
}





