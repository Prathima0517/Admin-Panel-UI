import 'package:admin_panel_ui/models/RecentFiles.dart';
import 'package:admin_panel_ui/screens/main/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Container recentFiles(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(defaultPadding),
    decoration: BoxDecoration(
      color: secondaryColor,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recent Files",
          style: Theme.of(context).textTheme.subtitle1,
        ),
        SizedBox(
          width: double.infinity,
          child: DataTable(
              horizontalMargin: 0,
              columnSpacing: defaultPadding,
              columns: [
                DataColumn(label: Text("File Name")),
                DataColumn(label: Text("Date")),
                DataColumn(label: Text("Size")),
              ],
              rows: List.generate(demoRecentFiles.length,
                  (index) => recentFileDataRow(demoRecentFiles[index]))),
        )
      ],
    ),
  );
}

DataRow recentFileDataRow(RecentFile fileInfo) {
  return DataRow(cells: [
    DataCell(Row(
      children: [
        SvgPicture.asset(
          fileInfo.icon,
          height: 30,
          width: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Text(fileInfo.title),
        )
      ],
    )),
    DataCell(Text(fileInfo.date)),
    DataCell(Text(fileInfo.size)),
  ]);
}
