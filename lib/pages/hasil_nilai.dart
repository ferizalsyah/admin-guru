import 'package:flutter/material.dart';
import 'package:flutter_ui/theme.dart';

class HasilNilai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        centerTitle: true,
        title: Text('Hasil Nilai'),
        elevation: 0,
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.all(defaulMargin),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/tabel-data');
              },
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_logo.png',
                    width: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      'Irvan Renaldi',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                  Icon(Icons.chevron_right),
                  SizedBox(
                    height: 6,
                  ),
                  Divider(
                    thickness: 1,
                    color: Color(0xff0f0101),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: header(),
      body: content(),
    );
  }
}
