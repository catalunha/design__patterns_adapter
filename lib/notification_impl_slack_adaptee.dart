import 'package:design__patterns_adapter/notification.dart';
import 'package:design__patterns_adapter/slack_api.dart';

class NotificationImplSlackAdaptee implements Notification {
  final SlackApi slackApi;
  final String chatId;
  NotificationImplSlackAdaptee({
    required this.slackApi,
    required this.chatId,
  });
  @override
  send({required String title, required String message}) {
    String slackMessage = '# $title # $message';
    slackApi.logIn();
    slackApi.sendMessage(chatId: chatId, message: slackMessage);
  }
}
