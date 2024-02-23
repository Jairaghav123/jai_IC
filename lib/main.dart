import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instrument_cluster/components/road_3d.dart';




void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
       MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark(useMaterial3:true),
        // ThemeData(
        //    primarySwatch: Colors.blue,
        // ),
        home:const MyRoad()
      );

  }
}
