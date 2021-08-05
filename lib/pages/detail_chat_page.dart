import 'package:flutter/material.dart';
import 'package:flutter_ui/theme.dart';
import 'package:flutter_ui/widgets/chat_buble.dart';

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

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaulMargin,
        ),
        children: [
          Chat(
            isSender: true,
            text: "Hallo",
          ),
          Chat(
            isSender: false,
            text: "Publish Jurnal",
          ),
        ],
      );
    }

    Widget chatInput() {
      return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      color: backgroundColor5,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Type Messege',
                          hintStyle: primaryTextStyle,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Icon(
                  Icons.attach_file,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.send,
                ),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      appBar: header(),
      body: content(),
      bottomNavigationBar: chatInput(),
    );
  }
}
