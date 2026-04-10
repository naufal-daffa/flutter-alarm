import 'package:flutter/material.dart';
import 'package:flutter_aps_1/edit_alarm.dart';

class ListAlarm extends StatefulWidget {
  const ListAlarm({super.key});

  @override
  State<ListAlarm> createState() => _ListAlarmState();
}

class _ListAlarmState extends State<ListAlarm> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Alarm List"),
        backgroundColor: Colors.deepPurpleAccent[400],
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(20),
            elevation: 10,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<EditAlarm>(
                    builder: (context) => const EditAlarm(),
                  ),
                );
              },
              borderRadius: BorderRadius.circular(10),
              child: ListTile(
                title: Text(
                  "02 : 59",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Everyday"),
                leading: Icon(
                  Icons.alarm,
                  size: 40,
                  color: Colors.deepPurpleAccent[400],
                ),
                trailing: Switch(
                  value: isOn,
                  onChanged: (value) {
                    setState(() {
                      isOn = value;
                    });
                  },
                  activeColor: Colors.deepPurpleAccent[400],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
