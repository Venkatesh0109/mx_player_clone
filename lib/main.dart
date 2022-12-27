import 'package:flutter/material.dart';
import 'package:flutter_application_2/appbar.dart';
import 'package:flutter_application_2/bottombar.dart';
import 'package:flutter_application_2/constants/colors.dart';
import 'package:flutter_application_2/drawer.dart';
import 'package:flutter_application_2/home_page.dart';
import 'package:flutter_application_2/key.dart';
import 'package:flutter_application_2/layout_provider.dart';
import 'package:flutter_application_2/pages.dart/music.dart';
import 'package:flutter_application_2/pages.dart/videos.dart';
import 'package:flutter_application_2/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<LayoutProvider>(
        create: (context) => LayoutProvider(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List pages = [const HomePage(), const Videos(), const Music()];
  List appbarlists = [customAppbar(), videoAppbar(), videoAppbar()];
  @override
  Widget build(BuildContext context) {
    return Consumer<LayoutProvider>(
        builder: (context, value, child) => Scaffold(
              body: SafeArea(
                child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: pages[value.pageindex]),
              ),
              appBar: appbarlists[value.pageindex],
              //  customAppbar()

              bottomNavigationBar: bottomBar(context),
              drawer: const IconDrawer(),
              key: drawerkey,
            ));
  }
}
