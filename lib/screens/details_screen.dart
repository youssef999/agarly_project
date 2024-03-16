

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  String image, title, place, price,des;
  DetailsScreen(
    {super.key,required this.image,
    required this.des,
    required this.place,required this.price,
    required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 706,
          decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(40),
             boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            color:Colors.white
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment:MainAxisAlignment.start,
              children: [
             
             
              Padding(
                padding: const EdgeInsets.only(left:5,right: 5),
                child: SizedBox(
                  height: 370,
                  width:MediaQuery.of(context).size.width,
                  child: Image.network(image,
                  fit:BoxFit.cover,
                  )),
              ),
            
                const SizedBox(height:5,),
            
                Row(
                  children: [
                    Text("Place : $title",style:const TextStyle(
                      color:Colors.black,fontSize:21,
                       fontWeight:FontWeight.w500
                    ),),
                  ],
                ),
            
            
                const SizedBox(height:5,),
                 Row(
                   children: [
                     Text("City : $place",style:const TextStyle(
                      color:Colors.black,fontSize:21,
                      fontWeight:FontWeight.w500
                                   ),),
                   ],
                 ),
                 const SizedBox(height:5,),
             Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text( des,style:const TextStyle(
                        color:Colors.grey,fontSize:17
                      ),),
                 ),
               ],
             ),
              const SizedBox(height:5,),
            
             Row(
               children: [
                 Text("Price Per Day : $price",style:const TextStyle(
                      color:Colors.black,fontSize:21,
                      fontWeight:FontWeight.bold
                    ),),
               ],
             ),
            
                 const SizedBox(height:5,),
            
                 MaterialButton(
                  color:Colors.red,
                  onPressed: (){},
                 child:const Text("Book Now",
                 style:TextStyle(color:Colors.white),
                 ),
                 )
            
            
            
            
            
            
            
              
            ],),
          ),
        ),
      )
    );
  }
}