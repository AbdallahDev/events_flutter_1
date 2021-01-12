import 'package:events_flutter/ui/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'نشاطات مجلس النواب',
      theme: ThemeData(
        primarySwatch: Colors.red,
        //I've set this property to make the checkbox border-color black when
        // it's not selected.
        unselectedWidgetColor: Colors.black,
      ),
      home: Home(),
    );
  }
}
