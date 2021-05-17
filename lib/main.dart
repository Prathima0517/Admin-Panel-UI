import 'package:admin_panel_ui/controllers/menu_controllers.dart';
import 'package:admin_panel_ui/main_screen.dart';
import 'package:admin_panel_ui/screens/main/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin Panel UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      home: MultiProvider(providers: [
        ChangeNotifierProvider(create: (context) => MenuController())
      ],
      child: MainScreen(),),
    );
  }
}
