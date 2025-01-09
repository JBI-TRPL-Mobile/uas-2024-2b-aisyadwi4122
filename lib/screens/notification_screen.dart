import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  final List<NotificationData> notifications; // Ganti dengan tipe data notifikasi Anda

  const NotificationScreen({super.key, required this.notifications});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifikasi'),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return ListTile(
            title: Text(notification.title),
            subtitle: Text(notification.content),
          );
        },
      ),
    );
  }
}

class NotificationData {
  final String title;
  final String content;

  NotificationData({required this.title, required this.content});
}