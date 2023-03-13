import 'package:flutter/material.dart';

import 'graph.dart';

class AR extends StatelessWidget {
  AR({super.key, required this.s, required this.d, required this.f});
  // ignore: prefer_typing_uninitialized_variables
  var f, s, d;
  late final path = pathfindalgo(s, d, f);
  late var strpath = path.join(' -> ');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child: Center(child: Text('AR PATH :\n $strpath'))
          /*ListView.builder(
          itemCount: path.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(path[index]),
            );
          },
        ),*/
          ),
    );
  }
}
