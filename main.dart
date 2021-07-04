import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Home
void main() {
  runApp(MaterialApp(
    title: 'Weather App',
    home: Home(),
  )
  );
}

class Home extends StatefulWidget {
  @override
  State <StatefulWidget> createState () {
    return Body();
  }
}

// Body
class Body extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Top bar
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Port Harcourt Weather',
              style: TextStyle(
                  color: Color(0xE6E5EA66),
                  fontSize: 40.0
              )
          )
      ),

      backgroundColor: Colors.white70,

      // Body
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 0.0),
        child: ListView(
          children: <Widget>[

            ListTile(
                leading: Icon(Icons.water),
                title: Text('Moisture'),
                trailing: Text('5200ml'),
              ),

            ListTile(
                leading: Icon(Icons.ac_unit),
                title: Text('Humidity'),
                trailing: Text('65mmHg'),
              ),

            ListTile(
              leading: Icon(Icons.thermostat),
              title: Text('Temperature'),
                trailing: Text('52\u00B0C'),
            ),

            ListTile(
            leading: Icon(Icons.air),
            title: Text('Air pressure'),
            trailing: Text('52psi'),
          ),

            ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Weather '),
                trailing: Text('Sunny'),
              ),
          ],
        ),
      ),
    );
  }
}
