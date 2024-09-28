import 'package:flutter/material.dart';
import 'package:sbm_demo/Utils/colorsfile.dart';


class CarDetailsScreen extends StatefulWidget {
   final String carName;
   final String brandName;
   final String imgaUrl;

  const CarDetailsScreen({super.key, required this.carName, required this.brandName, required this.imgaUrl});

  @override
  State<CarDetailsScreen> createState() => _CarDetailsScreenState();
}

class _CarDetailsScreenState extends State<CarDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backround_color,
      appBar: AppBar(
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.all(5),
          height: sheight(1.5, context),
          width: swidth(1.5, context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10),),
            border: Border.all(color: Colors.grey)
          ),
          child: Center(
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_sharp,size: 15,),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        actions: <Widget>[
          Container(
            // margin: EdgeInsets.all(5),
            height: sheight(4.5, context),
            width: swidth(10, context),
            decoration: BoxDecoration(
              color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(10),),
            ),
            child:  Center(child: Icon(Icons.bookmark_border,color: Colors.white,)),

          ),
          Container(
            margin: EdgeInsets.all(5),
            height: sheight(4.5, context),
            width: swidth(10, context),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10),),
              border: Border.all(color: Colors.grey)
            ),
            child:  Center(child: Icon(Icons.ios_share_rounded,color: Colors.black,)),

          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(15),)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.carName,
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          widget.brandName,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: sheight(2, context)),
                        Image.network(
                          widget.imgaUrl, // Replace with the car image link
                          height: sheight(25, context),
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: sheight(3, context)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.blue, width: 2),
                          ),
                          padding: EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "12 Month",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "12,000",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,color: Colors.white
                                ),
                              ),
                              Text(
                                'INR',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(

                                color: Colors.grey.withOpacity(0.5), width: 1),
                          ),
                          padding: EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "6 Month",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "32,000",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,color: Colors.black
                                ),
                              ),
                              Text(
                                'INR',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(

                                color: Colors.grey.withOpacity(0.5), width: 1),
                          ),
                          padding: EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "1 Month",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "64,000",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,color: Colors.black
                                ),
                              ),
                              Text(
                                'INR',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                ],),
              ),
            ),

            SizedBox(height: sheight(2, context)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SPECIFICATIONS',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      SpecificationTile(label: 'Color', value: 'White'),
                      SpecificationTile(label: 'Gearbox', value: 'Automatic'),
                      SpecificationTile(label: 'Seat', value: '4'),
                    ],),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: sheight(8, context),
        color: Colors.white,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text("12 Month",style: TextStyle(fontSize: 17,color: Colors.black),),
                  Text("INR 12,000",style: TextStyle(fontSize: 15,color: Colors.black),),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle car selection
                },
                child: Text('     Select This Car     ',style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LeaseOptionCard extends StatelessWidget {
  final String duration;
  final String price;

  LeaseOptionCard({required this.duration, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.blue, width: 2),
        ),
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              duration,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),
            Text(
              price,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(
              'IDR',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SpecificationTile extends StatelessWidget {
  final String label;
  final String value;

  SpecificationTile({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
           height: sheight(9, context),
        width: swidth(30, context),
         decoration: BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.all(Radius.circular(10),)
         ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 10,),
            Text(
              value,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}





