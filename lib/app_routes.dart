import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'loading.dart';
import 'login.dart';
import 'main.dart';
import 'dashboard.dart';
import 'notification.dart';
import 'messages.dart';
import 'schedule.dart';
import 'profile.dart';
import 'qr.dart';
import 'payment.dart';
import 'motor_list.dart';
import 'camera.dart';
import 'motor_arrival.dart';

class AppRoutes {
  GoRouter route = GoRouter(
    initialLocation: '/loading',
    routes: [
      GoRoute(
        path: '/loading',
        pageBuilder: (context, state) =>
            MaterialPage<void>(child: LoadingPage()),
      ),
      GoRoute(
        path: '/login',
        pageBuilder: (context, state) => MaterialPage<void>(child: LoginPage()),
      ),
      GoRoute(
        path: '/',
        pageBuilder: (context, state) => MaterialPage<void>(child: HomePage()),
      ),
      GoRoute(
        path: '/notification',
        pageBuilder: (context, state) =>
            MaterialPage<void>(child: NotificationPage()),
      ),
      GoRoute(
        path: '/dashboard',
        pageBuilder: (context, state) =>
            MaterialPage<void>(child: DashboardPage()),
      ),
      GoRoute(
        path: '/messages',
        pageBuilder: (context, state) =>
            MaterialPage<void>(child: MessagesPage()),
      ),
      GoRoute(
        path: '/schedule',
        pageBuilder: (context, state) =>
            MaterialPage<void>(child: SchedulePage()),
      ),
      GoRoute(
        path: '/profile',
        pageBuilder: (context, state) =>
            MaterialPage<void>(child: ProfilePage()),
      ),
      GoRoute(
        path: '/qr',
        pageBuilder: (context, state) => MaterialPage<void>(child: QRPage()),
      ),
      GoRoute(
        path: '/payment',
        pageBuilder: (context, state) =>
            MaterialPage<void>(child: PaymentPage()),
      ),
      GoRoute(
        path: '/motor_list',
        pageBuilder: (context, state) =>
            MaterialPage<void>(child: MotorListPage()),
      ),
      GoRoute(
        path: '/camera',
        pageBuilder: (context, state) =>
            MaterialPage<void>(child: CameraPage()),
      ),
      GoRoute(
        path: '/motor_arrival',
        pageBuilder: (context, state) =>
            MaterialPage<void>(child: MotorArrivalPage()),
      ),
      // Add other routes here
    ],
  );
}
