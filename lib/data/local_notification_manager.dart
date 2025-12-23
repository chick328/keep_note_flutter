import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotificationManager {
  static const _channelId = "keep_note";
  static const _channelName = "keep_note";
  static const _channelDescription = "keep_note";

  Future<void> scheduleNotification(
    int id,
    String title,
    String content,
  ) async {
    await FlutterLocalNotificationsPlugin().show(
      1,
      "test",
      "test body",
      NotificationDetails(
        android: AndroidNotificationDetails(
          'test1',
          'test1',
          channelDescription: 'test1',
          importance: Importance.max,
          priority: Priority.high,
        ),
      ),
    );
  }

  Future<void> cancelScheduledNotification(int id) async {
    await FlutterLocalNotificationsPlugin().cancel(id);
  }
}
