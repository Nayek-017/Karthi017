import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  

  var services = [
    "AC Repair services",
    "Carpet Cleaning sevices",
    "Electrical sevices",
    "Furniture sevices",
    "House cleaning sevices",
    "Plumbing services"
  ];

  var images = [
    "images/AC mechanic.jpg",
    "images/carpenter.jpg",
    "images/elec.jpg",
    "images/furniture.jpg",
    "images/Housecleaning.jpg",
    "images/plumber.jpg",

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2
      ),
      itemBuilder: (BuildContext context,int index){
        return Card(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Image.asset(images[index],height: 100,width: 100,),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(services[index],style: TextStyle(fontSize: 16,height: 1.2,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              )

            ],
          ),
        );
      }
    );
  }
}