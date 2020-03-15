main() {
  // abstract关键字修饰class

  FootMessage footMessage = Message('foot');
  BackMessage backMessage = Message('back');
  SpecialMessage specialMessage = Message('special');

  footMessage.doMessage();
  backMessage.doMessage();
  specialMessage.doMessage();

}

abstract class Message {
  factory Message(String type) {
    switch (type) {
      case 'foot':
        return FootMessage();
      case 'back':
        return BackMessage();
      case 'special':
        return SpecialMessage();
    }
    return null;
  }

  void doMessage();
}

/// 接口的方式使用
class FootMessage implements Message {
  @override
  void doMessage() {
    print('foot message');
  }
}

class BackMessage implements Message {
  @override
  void doMessage() {
    print('back message');
  }
}

class SpecialMessage implements Message {
  @override
  void doMessage() {
    print('special message');
  }
}
