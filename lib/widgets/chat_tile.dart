// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_ui/theme.dart';

class ChatTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail-chat');
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 10,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/icon_logo.png',
                  width: 54,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bahasa Indonesia',
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        'Mata Pelajran resmi',
                        style: primaryTextStyle.copyWith(
                          fontWeight: light,
                        ),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Text(
                  'Now',
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Divider(
              thickness: 1,
              color: Color(0xffede6e6),
            ),
          ],
        ),
      ),
    );
  }
}
