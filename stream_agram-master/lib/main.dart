import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:provider/provider.dart';
import 'package:stream_agram/Screens/HomePedido.dart';

import 'controllers/hearticonstate.dart';
import 'controllers/homecontroller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Home()),
        ChangeNotifierProvider(create: (context) => HeartIconState()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        //pon un tema oscuro
        theme: ThemeData(
          primarySwatch: Colors.blue,
          //brightness: Brightness.dark,
        ),
        home: const Pedido(),
      ),
    );
  }
}
