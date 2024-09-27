import 'package:flutter/material.dart';

Color primary_color = Colors.blue;
Color backround_color = Color.fromRGBO(241, 236, 236, 1.0);


double sheight(double per, BuildContext context) {
  double sh = MediaQuery.of(context).size.height;
  return sh * per / 100;
}
double swidth(double per, BuildContext context) {
  double sh = MediaQuery.of(context).size.width;
  return sh * per / 100;
}


List<Map<String,dynamic>> carDetails = [
  {
    "carname":"Discovery",
    "company":"LandRover",
    "offer":"perweek",
    "top":"weekly",
    "image":"https://imgd.aeplcdn.com/664x374/n/cw/ec/44879/landrover-discovery-sport-right-front-three-quarter16.jpeg?q=80",
  },
  {
    "carname":"C4",
    "company":"Alfa Romeo",
    "offer":"per month",
    "top":"monthly",
    "image":"https://file.kelleybluebookimages.com/kbb/base/evox/CP/11130/2018-Alfa%20Romeo-4C-front_11130_032_2400x1800_PWZ.png",
  },
  {
    "carname":"Audi Q3",
    "company":"Audi",
    "offer":"per Week",
    "top":"Weekly",
    "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqb9Vqi7x1WNWXkYvyzrSebiSphJ6BzXBAYdCxtL5tGVuVKs8aqrzldHKN4KIKtERMtEQ&usqp=CAU",
  },
];
