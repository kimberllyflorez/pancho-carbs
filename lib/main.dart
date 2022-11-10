import 'package:flutter/material.dart';
import 'package:projects_study/data_user/provider/get_data_user.dart';
import 'package:projects_study/data_user/ui/pages/pages.dart';
import 'package:projects_study/home/ui/pages/home_pg.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GetDataUser()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.white10,
        primarySwatch: Colors.purple,
      ),
      home: const FirstWelcomePg(),
      routes: {
        'firstPage': (_) => const FirstWelcomePg(),
        'agePg': (_) => const AgePg(),
        'weightPg': (_) => const WeightPg(),
        'heightPg': (_) => const HeightPg(),
        'genderPg': (_) => const GenderPg(),
        'activity': (_) => const ActivityLabel(),
        'home': (_) => const HomePg(),
      },
    );
  }
}
