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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
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

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
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
