import 'package:flutter/material.dart';
import 'package:food_delivery_app/home/home_screen.dart';

import 'items.dart';

class ItemScreen extends StatelessWidget {
  static const String routeName='/items';
  final List foods = [
    'CheesePizza',
    'Burger'
    'Pizza',
  ];
  List description=['Mixed Pizza with beef,chilli and cheese','Easy Smash Burger with Best Burger Sauce'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pushNamed(context, HomeScreen.routeName);
          },
          child: Icon(Icons.arrow_back_ios,),
          
        ),
        centerTitle: true,
        title: const Text('Cheese Pizza',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.favorite,color: Colors.red,size: 26,),
          )
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(description[0],style: TextStyle(fontSize: 18,color: Colors.black87),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star,color: Colors.red,size: 20,),
                  Text('4.7',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16),)
                ],
          
              ),
              SizedBox(
                child: Padding(padding: EdgeInsets.all(12),
                child:Image.asset('assets/images/Pizza.png'),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text('Calories',style: TextStyle(fontSize: 18),),
                      Text('120',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Container(
                    height: 30,
                    width: 3,
                    color: Colors.black54,
                  ),
                  Column(
                    children: [
                      Text('Volume',style: TextStyle(fontSize: 18),),
                      Text('12 inch',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Container(
                    height: 30,
                    width: 3,
                    color: Colors.black54,
                  ),
                  Column(
                    children: [
                      Text('Distance',style: TextStyle(fontSize: 18),),
                      Text('1 KM',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height:40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text('Order',style: TextStyle(fontSize: 20),),
                    Row(
                      children: [
                        Icon(Icons.add_circle_outline,weight: 3,size: 20,color: Colors.black,),
                        Text('01',style: TextStyle(fontSize:18 ,fontWeight: FontWeight.bold,color: Colors.black),),
                        Icon(Icons.remove_circle_outline,weight: 3,size: 20,color: Colors.black,),
                      ],
                    )
                    ],
                  ),
          
                  Column(
                    children: [
                      Text('Delivery',style: TextStyle(fontSize: 20),),
                      Text('Express',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.green),),
                    ],
                  ),
          
                  Column(
                    children: [
                      Text('Price',style: TextStyle(fontSize: 20),),
                      Text('\$8.99',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal:20,vertical: 50),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.red[600],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Add to Cart ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(width: 10,),
                      Icon(Icons.add_circle_outline,color: Colors.white,),
          
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
