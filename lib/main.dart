import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:sbm_demo/second_screen.dart';

import 'Utils/colorsfile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backround_color,
      appBar: AppBar(
        title: Text('Car Deals'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          SizedBox(height: sheight(1, context),),

          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Available Cars\nLong term and short term',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
                ),
                Container(
                  height: sheight(5, context),
                  width: swidth(10, context),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10),),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.arrow_forward_ios, color: Colors.blue),
                    onPressed: () {
                      // Handle button press
                    },
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: sheight(2, context)),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('TOP DEALS', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text('More', style: TextStyle(color: Colors.blue)),
                  SizedBox(width: 5,),
                  Icon(Icons.arrow_forward_ios,size: 10,color: Colors.blue,),
                ],
              ),
              SizedBox(height: 12),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for(int i = 0; i < carDetails.length; i++)
                    InkWell(
                      child: Container(
                        height: sheight(37, context),
                        width: swidth(50, context),
                        margin: EdgeInsets.only(right: 10),
                        padding: EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  color: Colors.blue[100],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "  ${carDetails[i]['top']}   ",
                                  style: TextStyle(color: Colors.blue, fontSize: 12,fontWeight: FontWeight.w900),
                                ),
                              ),
                            ),
                            SizedBox(height: sheight(0.5, context),),
                            Image.network("${carDetails[i]['image']}", height: sheight(19, context), fit: BoxFit.cover),
                            SizedBox(height: sheight(1, context)),
                            Text("${carDetails[i]['carname']}", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                            Text("${carDetails[i]['company']}", style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("${carDetails[i]['offer']}", style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CarDetailsScreen(carName: "${carDetails[i]['carname']}", brandName: "${carDetails[i]['company']}", imgaUrl: "${carDetails[i]['image']}",)));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: sheight(2, context)),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('TOP DEALERS', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text('More', style: TextStyle(color: Colors.blue)),
                  SizedBox(width: 5,),
                  Icon(Icons.arrow_forward_ios,size: 10,color: Colors.blue,),
                ],
              ),
              SizedBox(height: sheight(1.5, context),),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: sheight(15, context),
                      width: swidth(30, context),
                      margin: EdgeInsets.all(4.0),
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Image.network("https://1000logos.net/wp-content/uploads/2023/03/Hertz-Logo-1966.png", height: sheight(6, context), fit: BoxFit.cover),
                          SizedBox(height: 8),
                          Text("Hertz", style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("174 offers", style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                    Container(
                      height: sheight(15, context),
                      width: swidth(30, context),
                      margin: EdgeInsets.all(4.0),
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Image.network("https://play-lh.googleusercontent.com/Xy7MGF7cG7jcJAs58rI0lR_WWxqrGvgF8ntUROt_iEMcrc1V9LHh6F9kgwU2QOQumhA=w240-h480-rw", height: sheight(6, context), fit: BoxFit.cover),
                          SizedBox(height: 8),
                          Text("Avis", style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("126 offers", style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                    Container(
                      height: sheight(15, context),
                      width: swidth(30, context),
                      margin: EdgeInsets.all(4.0),
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Image.network("https://play-lh.googleusercontent.com/Xy7MGF7cG7jcJAs58rI0lR_WWxqrGvgF8ntUROt_iEMcrc1V9LHh6F9kgwU2QOQumhA=w240-h480-rw",height: sheight(6, context), fit: BoxFit.cover),
                          SizedBox(height: 8),
                          Text("Avis", style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("126 offers", style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.blue[900],
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
            selectedColor: Colors.orange,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.notifications),
            title: Text("Likes"),
            selectedColor: Colors.pink,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            selectedColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}

