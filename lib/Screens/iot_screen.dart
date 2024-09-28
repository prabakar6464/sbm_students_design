
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../Utils/colorsfile.dart';
class IoTOnoffSwitch extends StatefulWidget {
  const IoTOnoffSwitch({super.key});

  @override
  State<IoTOnoffSwitch> createState() => _IoTOnoffSwitchState();
}

class _IoTOnoffSwitchState extends State<IoTOnoffSwitch> {
  bool switchbool = false;
  int swithValue = 1;
  onofSwitch(int control)async{
    final responce = await http.get(Uri.parse("http://mangocity.appblocky.com/webdb/storeavalue.php?tag=vtest&value=*${control}"));
    print(responce);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backround_color,
      appBar: AppBar(
        title: Text('IoT'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Center(child: Switch(
          value: switchbool,
          onChanged: (value){
            setState(() {
              switchbool = value;
              print(switchbool);
              swithValue = switchbool ? 2:1;
              print(swithValue);
              onofSwitch(swithValue);
            });
          }
      ),),
    );
  }
}
