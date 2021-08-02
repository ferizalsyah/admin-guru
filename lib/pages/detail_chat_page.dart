import 'package:flutter/material.dart';
import 'package:flutter_ui/theme.dart';

class DetailChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        centerTitle: true,
        title: Row(
          children: [
            Image.asset(
              'assets/icon_logo_online.png',
              width: 50,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bahasa ',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Online',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      appBar: header(),
    );
  }
}
