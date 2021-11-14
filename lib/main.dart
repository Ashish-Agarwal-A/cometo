import 'package:cometo/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}
 class  App extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       title: 'Flutter Demo',
       theme: ThemeData(
         textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.redAccent),
         visualDensity: VisualDensity.adaptivePlatformDensity,
       ),
       home: HomeScreen(),
     );
   }
 }
 