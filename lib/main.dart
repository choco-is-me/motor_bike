import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'app_routes.dart';
import 'dashboard.dart';
import 'messages.dart';
import 'schedule.dart';
import 'profile.dart';
import 'qr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Motorbike',
      theme: ThemeData(
        useMaterial3: true,
        splashColor: Colors.transparent,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes().route,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  MyHomePage createState() => MyHomePage();
}

class MyHomePage extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    const DashboardPage(),
    const SchedulePage(),
    const MessagesPage(),
    const ProfilePage(),
    const QRPage(),
  ];

  final pageTitles = [
    'Trang Chủ',
    'Lịch Hẹn',
    'Tin Nhắn',
    'Thông Tin Cá Nhân',
    'QR Thanh Toán',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0), // Add left padding here
          child: Image.asset('assets/company_icon.png', height: 40),
        ),
        title: Text(
          pageTitles[pageIndex],
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true, // This centers the title
        actions: <Widget>[
          IconButton(
            iconSize: 40.0,
            icon: Icon(Icons.circle_notifications),
            color: Colors.white,
            onPressed: () {
              GoRouter.of(context).push('/notification');
            },
          )
        ],
      ),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.home_filled,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.calendar_month,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.calendar_month_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.chat,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.chat_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.person_outline,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 4;
              });
            },
            icon: pageIndex == 4
                ? const Icon(
                    Icons.qr_code,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.qr_code_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
        ],
      ),
    );
  }
}
