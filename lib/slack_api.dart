class SlackApi {
  final String _login;
  final String _apiKey;
  SlackApi({required String login, required String apiKey})
      : _login = login,
        _apiKey = apiKey;
  void logIn() {
    print('Logged in to a slack account $_login');
  }

  sendMessage({required String chatId, required String message}) {
    print('Slack Posted following message into the $chatId chat: $message');
  }
}
