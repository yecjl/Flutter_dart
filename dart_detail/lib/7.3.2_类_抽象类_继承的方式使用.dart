main() {
  // abstract关键字修饰class

  FootMessage footMessage = messageFactory('foot');
  BackMessage backMessage = messageFactory('back');
  SpecialMessage specialMessage = messageFactory('special');

  footMessage.doMessage();
  backMessage.doMessage();
  specialMessage.doMessage();

}

// 顶级函数
Message messageFactory(String type) {
  switch (type) {
    case 'foot':
      return FootMessage();
    case 'back':
      return BackMessage();
    case 'special':
      return SpecialMessage();
  }
}

abstract class Message {
  void doMessage() {
    print('message');
  }
}

/// 继承的方式使用
class FootMessage extends Message {
  @override
  void doMessage() {
    print('foot message');
  }
}

class BackMessage extends Message {
  @override
  void doMessage() {
    print('back message');
  }
}

class SpecialMessage extends Message {
  @override
  void doMessage() {
    print('special message');
  }
}
