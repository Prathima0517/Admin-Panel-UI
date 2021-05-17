import 'package:admin_panel_ui/responsive.dart';
import 'package:admin_panel_ui/screens/dashboard/components/header.dart';
import 'package:admin_panel_ui/screens/dashboard/components/recent_files.dart';
import 'package:admin_panel_ui/screens/dashboard/components/storage_details.dart';
import 'package:admin_panel_ui/screens/main/constants.dart';
import 'package:flutter/material.dart';

import 'components/my_files.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(children: [
          Header(),
          SizedBox(
            height: defaultPadding,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiles(),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      recentFiles(context),
                      if (Responsive.isMobile(context))
                        SizedBox(
                          height: defaultPadding,
                        ),
                      if (Responsive.isMobile(context))
                        Container(
                          padding: EdgeInsets.all(defaultPadding),
                          decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(10))),
                          child: StorageDetails(),
                        )
                    ],
                  )),
              if (!Responsive.isMobile(context))
                SizedBox(
                  width: defaultPadding,
                ),
              if (!Responsive.isMobile(context))
                Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.all(defaultPadding),
                      decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: StorageDetails(),
                    ))
            ],
          )
        ]),
      ),
    );
  }
}
