import 'package:flutter/material.dart';

import 'ar.dart';
import 'stair.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'INDOOR NAVIGATION SYSTEM',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Checkpoint {
  String position;
  String name;
  int floor;
  Checkpoint({required this.position, required this.name, required this.floor});
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
// Initial Selected Value
  String dropdownvalue1 = 'OFFICE';
  String dropdownvalue2 = 'ENTRANCE';
  //var pos1, pos2;

// List of items in our dropdown menu
  List<Checkpoint> points = [
    Checkpoint(position: '301', name: "ROOM 301", floor: 1),
    Checkpoint(position: '302', name: "DEPT OF APP SCIENCE", floor: 1),
    Checkpoint(position: '303', name: "COMPUTER CENTRE 1", floor: 1),
    Checkpoint(position: '305', name: "PRINCIPAL", floor: 1),
    Checkpoint(position: '306', name: "EXAM CONTROL ROOM", floor: 1),
    Checkpoint(position: '307', name: "OFFICE", floor: 1),
    Checkpoint(position: '309', name: "ROOM 309", floor: 1),
    Checkpoint(position: '310', name: "ROOM 310", floor: 1),
    Checkpoint(position: '311', name: "ROOM 311", floor: 1),
    Checkpoint(position: '312', name: "ROOM 312", floor: 1),
    Checkpoint(position: '313', name: "COMPUTER CENTRE 2", floor: 1),
    Checkpoint(position: '314', name: "ROOM 314", floor: 1),
    Checkpoint(position: '315', name: "ROOM 315", floor: 1),
    Checkpoint(position: '318', name: "LADIES TOILET", floor: 1),
    Checkpoint(position: '201', name: "ROOM 201", floor: 0),
    Checkpoint(position: '202', name: "HOD & FACULTY CS", floor: 0),
    Checkpoint(position: '203', name: "CO-OP SOCIETY", floor: 0),
    Checkpoint(position: '204', name: "PE DEPT", floor: 0),
    Checkpoint(position: '205', name: "ROOM 205", floor: 0),
    Checkpoint(position: '206', name: "CS FACULTY 2", floor: 0),
    Checkpoint(position: '207', name: "CS FACULTY 1", floor: 0),
    Checkpoint(position: '208', name: "ADVANCED LAB", floor: 0),
    Checkpoint(position: '209', name: "ROOM 209", floor: 0),
    Checkpoint(position: '210', name: "ROOM 210", floor: 0),
    Checkpoint(position: '211', name: "ROOM 211", floor: 0),
    Checkpoint(position: '212', name: "LIBRARY", floor: 0),
    Checkpoint(position: '213', name: "MEDICAL OFFICER", floor: 0),
    Checkpoint(position: '214', name: "ENTRANCE", floor: 0),
    Checkpoint(position: '215', name: "SEMINAR HALL", floor: 0),
    Checkpoint(position: '216', name: "GENTS TOILET", floor: 0),
  ];
  var items = [
    'PRINCIPAL',
    'DEPT OF APP SCIENCE',
    'COMPUTER CENTRE 1',
    'COMPUTER CENTRE 2',
    'EXAM CONTROL ROOM',
    'OFFICE',
    'ROOM 301',
    'ROOM 309',
    'ROOM 310',
    'ROOM 311',
    'ROOM 312',
    'ROOM 314',
    'ROOM 315',
    'LADIES TOILET',
    'ROOM 201',
    'HOD & FACULTY CS',
    'CO-OP SOCIETY',
    'PE DEPT',
    'ROOM 205',
    'CS FACULTY 1',
    'CS FACULTY 2',
    'ADVANCED LAB',
    'ROOM 209',
    'ROOM 210',
    'ROOM 211',
    'LIBRARY',
    'MEDICAL OFFICER',
    'ENTRANCE',
    'SEMINAR HALL',
    'GENTS TOILET',
  ];
  @override
  Widget build(BuildContext context) {
    var index1, index2;
    return Scaffold(
      appBar: AppBar(
        title: const Text("INDOOR NAVIGATION SYSTEM"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("CURRENT LOCATION"),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: DropdownButton(
                // Initial Value
                value: dropdownvalue1,

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue1) {
                  setState(() {
                    dropdownvalue1 = newValue1!;
                  });
                },
              ),
            ),
            Text("DESTINATION"),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: DropdownButton(
                // Initial Value
                value: dropdownvalue2,

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue2 = newValue!;
                  });
                },
              ),
            ),
            FloatingActionButton(
              child: Icon(Icons.navigate_next),
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              onPressed: () {
                points.forEach((res) {
                  if (res.name == dropdownvalue2) {
                    index2 = res;
                  }
                });
                points.forEach((res) {
                  if (res.name == dropdownvalue1) {
                    index1 = res;
                  }
                });
                //print(index1.floor);
                //print(index2.floor);
                if (index1.floor == index2.floor) {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return AR(s: index1.position, d: index2.position, f: 0);
                  }));
                } else {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return Stair(st: index1.position, dt: index2.position);
                  }));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
