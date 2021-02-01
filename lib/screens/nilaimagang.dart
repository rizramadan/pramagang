import 'package:flutter/material.dart';
import 'package:pramagang/warna.dart';

class NilaiMagangPage extends StatefulWidget {
  @override
  _NilaiMagangPageState createState() => _NilaiMagangPageState();
}

class _NilaiMagangPageState extends State<NilaiMagangPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nilai Magang"),
        backgroundColor: ColorPalette.primaryDarkColor,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: <DataColumn>[
            DataColumn(label: Text("Category")),
            DataColumn(label: Text("A")),
            DataColumn(label: Text("B")),
            DataColumn(label: Text("C")),
            DataColumn(label: Text("D")),
            DataColumn(label: Text("E")),
          ],
          rows: <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text("Skill")),
                DataCell(Text("")),
                DataCell(Text("")),
                DataCell(Text("")),
                DataCell(Text("")),
                DataCell(Text("")),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text("Kerajinan")),
                DataCell(Text("")),
                DataCell(Text("")),
                DataCell(Text("")),
                DataCell(Text("")),
                DataCell(Text("")),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text("Kehadiran")),
                DataCell(Text("")),
                DataCell(Text("")),
                DataCell(Text("")),
                DataCell(Text("")),
                DataCell(Text("")),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text("Nilai Keseluruhan")),
                DataCell(Text("")),
                DataCell(Text("")),
                DataCell(Text("")),
                DataCell(Text("")),
                DataCell(Text("")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
