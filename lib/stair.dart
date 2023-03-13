import 'package:flutter/material.dart';

import 'ar.dart';

class Stair extends StatelessWidget {
  Stair({super.key, required this.st, required this.dt});
  var st, dt;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your Destination is on another floor\nplease select between stair or lift',
                style: TextStyle(
                    color: Color.fromARGB(255, 2, 54, 4),
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(50),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return AR(s: st, d: dt, f: 2);
                      }));
                    },
                    child: Text('  Stair  ')),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return AR(s: st, d: dt, f: 1);
                    }));
                  },
                  child: Text('Lift')),
            ],
          ),
        ),
      ),
    );
  }
}
