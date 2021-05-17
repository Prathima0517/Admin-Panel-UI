import 'package:admin_panel_ui/controllers/menu_controllers.dart';
import 'package:admin_panel_ui/responsive.dart';
import 'package:admin_panel_ui/screens/dashboard/dashboard_screen.dart';
import 'package:admin_panel_ui/screens/main/components/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(Responsive.isDesktop(context))
          Expanded(child: SideMenu()),
          Expanded(flex: 5, child: DashboardScreen())
        ],
      )),
    );
  }
}
