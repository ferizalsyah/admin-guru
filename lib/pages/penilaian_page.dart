import 'package:flutter/material.dart';
import 'package:flutter_ui/theme.dart';
// import 'package:flutter_ui/theme.dart';

class PenilaianPage extends StatefulWidget {
  @override
  _PenilaianPageState createState() => _PenilaianPageState();
}

class _PenilaianPageState extends State<PenilaianPage> {
  String _valNama;
  String _valPelajaran;
  String _valKelas;
  String _valNIlai;
  List _listNama = [
    'Nopan Cahyadi',
    'Irvan Renaldi',
    'Reno apriansya',
    'Arin syahputra'
  ];
  List _listPelajaran = [
    'Bahasa Indonesia',
    'Matematika',
  ];
  List _listKelas = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
  ];
  List _listNilai = [
    '10',
    '20',
    '30',
    '40',
    '50',
    '60',
    '70',
    '80',
    '90',
    '100',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Penilaian'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            DropdownButton(
              hint: Text(' --- Pilih Nama Siswa / I ---'),
              value: _valNama,
              elevation: 8,
              icon: Icon(Icons.arrow_drop_down_circle),
              isExpanded: true,
              items: _listNama.map((value) {
                return DropdownMenuItem(
                  child: Text(value),
                  value: value,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _valNama = value;
                });
              },
            ),
            SizedBox(
              height: 16,
            ),
            DropdownButton(
              hint: Text(' --- Pilih Mata Pelajaran ---'),
              value: _valPelajaran,
              elevation: 8,
              icon: Icon(Icons.arrow_drop_down_circle),
              isExpanded: true,
              items: _listPelajaran.map((value) {
                return DropdownMenuItem(
                  child: Text(value),
                  value: value,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _valPelajaran = value;
                });
              },
            ),
            SizedBox(
              height: 16,
            ),
            DropdownButton(
              hint: Text(' --- Pilih Kelas ---'),
              value: _valKelas,
              elevation: 8,
              icon: Icon(Icons.arrow_drop_down_circle),
              isExpanded: true,
              items: _listKelas.map((value) {
                return DropdownMenuItem(
                  child: Text(value),
                  value: value,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _valKelas = value;
                });
              },
            ),
            SizedBox(
              height: 16,
            ),
            DropdownButton(
              hint: Text(' --- Pilih Nilai ---'),
              value: _valNIlai,
              elevation: 8,
              icon: Icon(Icons.arrow_drop_down_circle),
              isExpanded: true,
              items: _listNilai.map((value) {
                return DropdownMenuItem(
                  child: Text(value),
                  value: value,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _valNIlai = value;
                });
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/hasil-nilai');
        },
        child: Text(
          'Kirim',
          style: primaryTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
        style: TextButton.styleFrom(
          backgroundColor: greenTextColor,
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
