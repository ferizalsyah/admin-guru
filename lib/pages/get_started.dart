import 'package:flutter/material.dart';
import 'package:flutter_ui/theme.dart';

class GetstartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/get-started.png',
                width: 300,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Madrasah Ibtidaiyah',
                style: primaryTextStyle.copyWith(fontSize: 24),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Sistem Informasi Pendidikan',
                style: primaryTextStyle.copyWith(fontSize: 20),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-in');
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 10,
                    ),
                    backgroundColor: greenTextColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Get Started',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        content(),
      ],
    );
  }
}
