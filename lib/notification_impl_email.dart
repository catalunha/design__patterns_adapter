import 'package:design__patterns_adapter/notification.dart';

class NotificationImplEmail implements Notification {
  final String adminEmail;
  NotificationImplEmail({
    required this.adminEmail,
  });

  @override
  send({required String title, required String message}) {
    mail(adminEmail, title, message);
    print('Sent email with title $title to $adminEmail that says $message');
  }

  void mail(String adminEmail, String title, String message) {}
}
