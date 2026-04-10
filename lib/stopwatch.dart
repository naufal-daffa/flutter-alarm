import 'package:flutter/material.dart';

class StopwatchPage extends StatefulWidget {
  const StopwatchPage({super.key});

  @override
  State<StopwatchPage> createState() => _StopwatchPageState();
}

class _StopwatchPageState extends State<StopwatchPage> {
  int hours = 00;
  int minutes = 00;
  int seconds = 00;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stopwatch')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Container(
                width: 350,
                height: 350,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey.shade200, width: 5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "$hours",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Funnel Display',
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(":"),
                    SizedBox(width: 5),
                    Text(
                      "$minutes",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Funnel Display',
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(":"),
                    SizedBox(width: 5),
                    Text(
                      "$seconds",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Funnel Display',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      hours = 0;
                      minutes = 0;
                      seconds = 0;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                  ),
                  child: Icon(Icons.restore, color: Colors.blueGrey[300]),
                ),
                SizedBox(width: 40),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (seconds < 59) {
                        seconds++;
                      } else {
                        seconds = 0;
                        if (minutes < 59) {
                          minutes++;
                        } else {
                          minutes = 0;
                          hours++;
                        }
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                  ),
                  child: Icon(
                    Icons.play_arrow_rounded,
                    size: 40,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(width: 40),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                  ),
                  child: Icon(Icons.timer, color: Colors.blueGrey[300]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
