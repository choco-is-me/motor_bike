import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'dart:async';

class LoadingPage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  double _progress = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween(begin: 0.9, end: 1.0).animate(_controller);
    fetchUserData().then((_) {
      GoRouter.of(context).go('/login');
    });
  }

  Future fetchUserData() async {
    // Simulate a network request
    for (int i = 0; i <= 100; i++) {
      await Future.delayed(Duration(milliseconds: 10));
      setState(() {
        _progress = i / 100;
      });
    }
    // If user data is fetched successfully, return true
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            AnimatedBuilder(
              animation: _animation,
              builder: (BuildContext context, Widget? child) {
                return Transform.scale(
                  scale: _animation.value,
                  child: child,
                );
              },
              child: Image.asset('assets/loading_icon.png'),
            ),
            SizedBox(height: 24),
            Text(
              'Chờ tí nha ní🥺',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 24),
            SizedBox(
              width: 200, // Adjust this value to your liking
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    10), // Adjust this value to make the edges rounder
                child: LinearProgressIndicator(
                  value: _progress,
                  minHeight: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
