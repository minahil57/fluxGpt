enum MessageStatus { loading, success, error }

enum MessageType {
  bot,
  user;

  String get roleName {
    switch (this) {
      case MessageType.bot:
        return 'Bot';
      case MessageType.user:
        return 'User';
    }
  }
}

class Message {
  Message({
    required this.id,
    this.text = '',
    this.type = MessageType.user,
    this.status = MessageStatus.success,
    this.lastUpdatedAt,
  });

  final String id;
  String text;
  final MessageType type;
  MessageStatus status;
  DateTime? lastUpdatedAt;

  bool get isUser => type == MessageType.user;
  bool get isBot => type == MessageType.bot;

  bool get isLoading => status == MessageStatus.loading;
  bool get isSuccess => status == MessageStatus.success;
  bool get isError => status == MessageStatus.error;
}
