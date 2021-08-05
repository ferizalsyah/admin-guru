import 'package:flutter/material.dart';

class TabelDataNilai extends StatefulWidget {
  @override
  _TabelDataNilaiState createState() => _TabelDataNilaiState();
}

class _TabelDataNilaiState extends State<TabelDataNilai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Tabel data hasil'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: <DataColumn>[
            DataColumn(label: Text(' Nama ')),
            DataColumn(label: Text(' Kelas ')),
            DataColumn(label: Text(' Nilai UTS ')),
            DataColumn(label: Text(' Nilai Harian ')),
          ],
          rows: <DataRow>[
            DataRow(cells: <DataCell>[
              DataCell(Text('Irvan Renaldi')),
              DataCell(Text('3 B')),
              DataCell(Text('40')),
              DataCell(Text('57')),
            ])
          ],
        ),
      ),
    );
  }
}
