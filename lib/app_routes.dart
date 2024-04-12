import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'loading.dart';
import 'login.dart';
import 'main.dart';
import 'notification.dart';
import 'schedule.dart';
import 'messages.dart';
import 'payment.dart';
import 'motor_list.dart';
import 'camera.dart';
import 'motor_arrival.dart';

class AppRoutes {
  GoRouter route = GoRouter(
    initialLocation: '/loading',
    routes: [
      // Loading Route
      GoRoute(
        path: '/loading',
        pageBuilder: (context, state) =>
            MaterialPage<void>(child: LoadingPage()),
      ),
      // Login Route
      GoRoute(
        path: '/login',
        pageBuilder: (context, state) => MaterialPage<void>(child: LoginPage()),
      ),
      // Home Route
      GoRoute(
        path: '/',
        pageBuilder: (context, state) => MaterialPage<void>(child: HomePage()),
      ),
      // Notification Route
      GoRoute(
        path: '/notification',
        name: 'notification',
        pageBuilder: (context, state) =>
            MaterialPage<void>(child: NotificationPage()),
      ),
      GoRoute(
        path: '/notification/detail/:title/:detail',
        name: 'notification_detail',
        builder: (context, state) => NotificationDetailPage(
          title: state.pathParameters['title']!,
          detail: state.pathParameters['detail']!,
        ),
      ),
      // Messages Route
      GoRoute(
        path: '/messages_detail/:title/:avatarImage',
        name: 'messages_detail',
        builder: (context, state) => ChatPage(
          title: state.pathParameters['title']!,
          avatarImage: state.pathParameters['avatarImage']!,
        ),
      ),
      // Schedule Route
      GoRoute(
        path: '/schedule_detail_at_place/:username/:bike/:status/:date/:time',
        name: 'schedule_detail_at_place',
        builder: (context, state) => ScheduleDetailPageAtPlace(
          username: state.pathParameters['username']!,
          bike: state.pathParameters['bike']!,
          status: state.pathParameters['status']!,
          date: state.pathParameters['date']!,
          time: state.pathParameters['time']!,
        ),
      ),
      GoRoute(
        path: '/schedule_detail_at_home/:username/:bike/:status/:date/:time',
        name: 'schedule_detail_at_home',
        builder: (context, state) => ScheduleDetailPageAtHome(
          username: state.pathParameters['username']!,
          bike: state.pathParameters['bike']!,
          status: state.pathParameters['status']!,
          date: state.pathParameters['date']!,
          time: state.pathParameters['time']!,
        ),
      ),
      // Payment Route
      GoRoute(
        path: '/payment',
        pageBuilder: (context, state) =>
            MaterialPage<void>(child: PaymentPage()),
      ),
      // Motor List Route
      GoRoute(
        path: '/motor_list',
        pageBuilder: (context, state) =>
            MaterialPage<void>(child: MotorListPage()),
      ),
      // Camera Route
      GoRoute(
        path: '/camera',
        pageBuilder: (context, state) =>
            MaterialPage<void>(child: CameraPage()),
      ),
      // Motor Arrival Route
      GoRoute(
        path: '/motor_arrival',
        pageBuilder: (context, state) =>
            MaterialPage<void>(child: MotorArrivalPage()),
      ),
    ],
  );
}
