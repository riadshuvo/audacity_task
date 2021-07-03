import 'package:audacity_task/home_page/ui/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_page/bloc/bloc.dart';
import 'home_page/repository/home_repository.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() => runApp(BlocProvider(
  create: (context) =>
      HomeBloc(repository: HomeRepository()),
  child: new MyApp(),
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      title: 'audacity task',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
