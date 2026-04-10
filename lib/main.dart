import 'package:flutter/material.dart';
import 'package:flutter_aps_1/alarm.dart';
import 'package:flutter_aps_1/list_alarm.dart';
import 'package:flutter_aps_1/stopwatch.dart';
import 'package:google_fonts/google_fonts.dart';

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
      ),
      home: const MyHomePage(title: 'Naufal Daffa'),
      // initialRoute: "/",
      // routes: {
      //   "/": (context) => MyHomePage(title: 'My Alarm App'),
      //   "/alarm": (context) => AlarmPage(),
      //   "/list-alarm": (context) => ListAlarm(),
      // },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        leading: Icon(Icons.account_box),
        actions: [Icon(Icons.search), Icon(Icons.more_vert)],
      ),
      body:
          // menampilkan text, steanalone widget
          // Text("rein"),
          //mmebuat button
          // body: ElevatedButton(
          //   onPressed: (){
          //   },
          //   child: Text("Log In")
          //membuat text input
          // TextField(),
          // TextFormField(),
          //single widget
          // Center(
          //   child: ElevatedButton(
          //     onPressed: null,
          //     child: Text("Click Me")
          //   ),
          // )
          //multiple widget, menampung banyak widget
          Column(
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/avatar.jpeg",
                      width: 150,
                      height: 150,
                    ),
                    Image.network(
                      "https://cdn-icons-png.flaticon.com/512/149/149071.png",
                      width: 150,
                      height: 150,
                    ),
                  ],
                ),
              ),
              Padding(
                // padding: EdgeInsets.all(50),
                padding: EdgeInsetsGeometry.only(bottom: 30, top: 30),
                child: Text(
                  "10 : 42 WIB",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromRGBO(126, 87, 194, 1),
                    // fontFamily: GoogleFonts.playwriteIETextTheme(),
                  ),
                ),
              ),
              Text(
                "Selasa, 20 Juni 2024",
                style: GoogleFonts.playwriteFrTrad(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<AlarmPage>(
                            builder: (context) => const AlarmPage(),
                          ),
                        );
                      },
                      child: Text("Alarm"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: ElevatedButton(
                      onPressed: () {
                        debugPrint("Teredit");
                      },
                      child: Text("Edit"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const StopwatchPage(),
                          ),
                        );
                      },
                      child: Text("Stopwatch"),
                    ),
                  ),
                ],
              ),
            ],
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute<ListAlarm>(
              builder: (context) => const ListAlarm(),
            ),
          );
        },
        child: Icon(Icons.alarm_add),
      ),
    );
  }
}
