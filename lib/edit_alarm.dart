import 'package:flutter/material.dart';

class EditAlarm extends StatefulWidget {
  const EditAlarm({super.key});

  @override
  State<EditAlarm> createState() => _EditAlarmState();
}

class _EditAlarmState extends State<EditAlarm> {
  bool isOnLibur = false;
  bool isOnVibrate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Alarm"),
        // leading: Icon(Icons.close),
        actions: [Icon(Icons.check)],
      ),
      body: Column(
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50, bottom: 50, right: 15),
                  child: Text(
                    "03",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50, bottom: 50, left: 15),
                  child: Text(
                    "16",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              debugPrint("Pilih Waktu");
            },
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 30),
              child: Row(
                children: [
                  Text("Ulangi"),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        "Setiap Hari",
                        style: TextStyle(color: Colors.blueGrey[200]),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.blueGrey[200],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, bottom: 30),
            child: Row(
              children: [
                Text("Suara Alarm"),
                Spacer(),
                Row(
                  children: [
                    Text(
                      "After The Rain",
                      style: TextStyle(color: Colors.blueGrey[200]),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.blueGrey[200],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 25),
            child: ListTile(
              title: Text("Lewati Hari Libur Nasional"),
              trailing: Switch(
                value: isOnLibur,
                onChanged: (value) {
                  setState(() {
                    isOnLibur = value;
                  });
                },
                activeColor: Colors.blue[400],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 25),
            child: ListTile(
              title: Text("Label"),
              trailing: Icon(Icons.arrow_forward_ios, size: 15),
              iconColor: Colors.blueGrey[200],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, bottom: 25),
            child: Row(
              children: [
                Text("Tunda"),
                Spacer(),
                Row(
                  children: [
                    Text(
                      "10 Menit",
                      style: TextStyle(color: Colors.blueGrey[200]),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.blueGrey[200],
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            title: Text("Bergetar Ketika Berdering"),
            trailing: Switch(
              value: isOnVibrate,
              onChanged: (value) {
                setState(() {
                  isOnVibrate = value;
                });
              },
              activeColor: Colors.blue[400],
            ),
          ),
        ],
      ),
    );
  }
}
