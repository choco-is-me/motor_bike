import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          _buildDashboardCard(
              context, "Đơn thanh toán", Icons.payment, "/payment"),
          _buildDashboardCard(
              context, "Xe cho mượn", Icons.motorcycle, "/motor_list"),
          _buildDashboardCard(context, "Camera", Icons.camera_alt, "/camera"),
          _buildDashboardCard(
              context, "Lịch trả xe", Icons.calendar_month, "/motor_arrival"),
        ],
      ),
    );
  }

  Card _buildDashboardCard(
      BuildContext context, String title, IconData icon, String route) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: 8.0,
      color: Colors.blueGrey[600],
      margin: EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: InkWell(
        onTap: () {
          // Navigate to the specific route
          GoRouter.of(context).push(route);
        },
        splashColor: Colors.grey.withAlpha(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, size: 50.0, color: Colors.white),
            SizedBox(height: 20.0),
            Text(
              title,
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
