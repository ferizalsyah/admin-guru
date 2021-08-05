import 'package:flutter/material.dart';
import 'package:flutter_ui/pages/detail_chat_page.dart';
import 'package:flutter_ui/pages/get_started.dart';
import 'package:flutter_ui/pages/hasil_nilai.dart';
import 'package:flutter_ui/pages/notifikasi_page.dart';
import 'package:flutter_ui/pages/penilaian_page.dart';
import 'package:flutter_ui/pages/tabel_data_nilai.dart';
import 'package:flutter_ui/widgets/chat_tile.dart';
import 'package:flutter_ui/pages/home/main_page.dart';
import 'package:flutter_ui/pages/sign_in_page.dart';
import 'package:flutter_ui/pages/sign_up_page.dart';
import 'package:flutter_ui/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/getstarted': (context) => GetstartedPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/chat-tile': (context) => ChatTile(),
        '/detail-chat': (context) => DetailChatPage(),
        '/penilaian-page': (context) => PenilaianPage(),
        '/notifikasi': (context) => NotifikasiPage(),
        '/hasil-nilai': (context) => HasilNilai(),
        '/tabel-data': (context) => TabelDataNilai(),
      },
    );
  }
}
