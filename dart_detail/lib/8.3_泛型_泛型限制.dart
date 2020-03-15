main() {
  var m = Message<FootMessage>(FootMessage());
  m.message.doMessage();

//  Message(BackMessage()); // 报错：BackMessage doesn't extends FootMessage
}

class Message<T extends FootMessage> {
  final T message;
  Message(this.message);
}

class FootMessage {
  void doMessage() => print('foot message');
}

class BackMessage {
  void doMessage() => print('back message');
}