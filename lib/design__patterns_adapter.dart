import 'package:design__patterns_adapter/notification.dart';
import 'package:design__patterns_adapter/notification_impl_email.dart';
import 'package:design__patterns_adapter/notification_impl_slack_adaptee.dart';
import 'package:design__patterns_adapter/slack_api.dart';

void execute() {
  print('Aplicando: https://refactoring.guru/pt-br/design-patterns/adapter');
  print(
      "Client code is designed correctly and works with email notifications:");
  var notification = NotificationImplEmail(adminEmail: 'dev@example.com');
  clientNotification(notification);
  print("The same client code can work with other classes via adapter:");
  var slackApi = SlackApi(login: 'example.com', apiKey: 'abc');
  var notification2 = NotificationImplSlackAdaptee(
      slackApi: slackApi, chatId: 'Dev example.com');
  clientNotification(notification2);
}

clientNotification(Notification notification) {
  print(notification.send(title: 'title1', message: 'message1'));
}
