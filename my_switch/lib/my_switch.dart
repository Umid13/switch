import 'package:flutter/material.dart';
class Switchlist extends StatefulWidget {
  const Switchlist({super.key});

  @override
  State<Switchlist> createState() => _SwitchlistState();
}

class _SwitchlistState extends State<Switchlist> {
  bool s=false;
  bool x=true;
  void fn(value){
    setState(() {
      s=!s;
    });
  }
  void fn1(va){
    setState(() {
      x=!x;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SwitchListTile(
        value: s,
         title: Padding(
           padding: const EdgeInsets.only(left: 20),
           child: Text(
            'Bluetooth',
            style: TextStyle(
              fontSize: 20
            ),
            ),
         ), 
         subtitle: Padding(
           padding: const EdgeInsets.only(left: 20),
           child: Text(
            'Not visible to other devices',
            style: TextStyle(
              color: Color.fromARGB(255, 123, 120, 120))
            ),
         ),

          onChanged: fn
         ),
         ListTile(
          title: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Cast',
              style: TextStyle(
                fontSize: 20
              ),
              ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Not connected',
              style: TextStyle(
                color: Color.fromARGB(255, 123, 120, 120))
              ),
          ),
         ),
         SwitchListTile(
          value: x,
          onChanged: fn1,
          title: Padding(
            padding: const EdgeInsets.only(left:20),
            child: Text(
                'NFC',
                style: TextStyle(
                  fontSize: 20
                ),
                ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
                'Allow data exchange when the phone touches another device',
                style: TextStyle(
                  color: Color.fromARGB(255, 123, 120, 120))
                ),
          ),
         ),
            ListTile(
          title: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Android Beam',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 123, 120, 120)
              ),
              ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Unavailable because NFC is turned off',
              style: TextStyle(
                color: Color.fromARGB(255, 123, 120, 120))
              ),
          ),
         ),
            ListTile(
          title: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'USB',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 123, 120, 120)
              ),
              ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Not connected',
              style: TextStyle(
                color: Color.fromARGB(255, 123, 120, 120))
              ),
          ),
         ),
            ListTile(
          title: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Printing',
              style: TextStyle(
                fontSize: 20
              ),
              ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              '2 print services on',
              style: TextStyle(
                color: Color.fromARGB(255, 85, 85, 85))
              ),
          ),
         ),
      ],
    );
  }
}