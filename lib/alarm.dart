import 'package:flutter/material.dart';

class AlarmPage extends StatefulWidget {
  const AlarmPage({super.key});

  @override
  State<AlarmPage> createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alarm"),
        backgroundColor: Colors.deepPurpleAccent[400],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Center(
              child: Icon(Icons.alarm, size: 40, color: Colors.deepPurpleAccent[400],)
            ),
          ),
          Text("02 : 59", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          ElevatedButton(onPressed:() {
            Navigator.pop(context);
          }, child: Text("Set Alarm"))
        ],
      ),
    );
  }
}
