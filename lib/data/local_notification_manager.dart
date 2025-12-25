import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class LocalNotificationManager {
  static const _channelId = "keep_note";
  static const _channelName = "keep_note";
  static const _channelDescription = "keep_note";

  Future<void> showNotification(int id, String title, String content) async {
    await FlutterLocalNotificationsPlugin().show(
      id,
      title,
      content,
      NotificationDetails(
        android: AndroidNotificationDetails(
          _channelId,
          _channelName,
          channelDescription: _channelDescription,
          importance: Importance.max,
          priority: Priority.high,
        ),
      ),
    );
  }

  Future<void> scheduleNotification(
    int id,
    String title,
    String content,
    DateTime scheduledDateTime,
  ) async {
    await FlutterLocalNotificationsPlugin().zonedSchedule(
      id,
      title,
      content,
      tz.TZDateTime.from(
        scheduledDateTime,
        tz.local,
      ),
      NotificationDetails(
        android: AndroidNotificationDetails(
          _channelId,
          _channelName,
          channelDescription: _channelDescription,
          importance: Importance.max,
          priority: Priority.high,
        ),
      ),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
    );
  }

  Future<void> cancelScheduledNotification(int id) async {
    await FlutterLocalNotificationsPlugin().cancel(id);
  }
}
