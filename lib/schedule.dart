import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            _buildScheduleCard(
              context,
              'Khách hàng 1',
              'Xe 1',
              'Tại nhà',
              '22/02/2024',
              '13 giờ 30 phút',
              'assets/avatar1.png',
            ),
            _buildScheduleCard(
              context,
              'Khách hàng 2',
              'Xe 2',
              'Tại chỗ',
              '23/02/2024',
              '15 giờ 30 phút',
              'assets/avatar2.png',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScheduleCard(BuildContext context, String username, String bike,
      String status, String date, String time, String avatarImage) {
    return Material(
        child: Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          if (status == 'Tại nhà') {
            GoRouter.of(context).pushNamed('schedule_detail_at_home',
                pathParameters: {
                  'username': username,
                  'bike': bike,
                  'status': status,
                  'date': date,
                  'time': time
                });
          } else if (status == 'Tại chỗ') {
            GoRouter.of(context).pushNamed('schedule_detail_at_place',
                pathParameters: {
                  'username': username,
                  'bike': bike,
                  'status': status,
                  'date': date,
                  'time': time
                });
          }
        },
        splashColor: Colors.blueGrey[300],
        highlightColor: Colors.blueGrey[300],
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                  color: Colors.blueGrey, width: 2.0), // This is the border
            ),
          ),
          child: Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              'Tên khách hàng:',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              username,
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Tên Xe:',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              bike,
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Loại:',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              status,
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Ngày đặt:',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              date,
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Thời gian:',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              time,
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(avatarImage),
                  maxRadius: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

class ScheduleDetailPageAtPlace extends StatelessWidget {
  final String username;
  final String bike;
  final String status;
  final String date;
  final String time;

  const ScheduleDetailPageAtPlace(
      {super.key,
      required this.username,
      required this.bike,
      required this.status,
      required this.date,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => GoRouter.of(context).pop(),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          'Thông tin đặt hẹn tại chỗ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}

class ScheduleDetailPageAtHome extends StatelessWidget {
  final String username;
  final String bike;
  final String status;
  final String date;
  final String time;

  const ScheduleDetailPageAtHome(
      {super.key,
      required this.username,
      required this.bike,
      required this.status,
      required this.date,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => GoRouter.of(context).pop(),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          'Thông tin đặt hẹn tại nhà',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
