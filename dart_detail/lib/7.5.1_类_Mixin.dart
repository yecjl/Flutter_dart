main() {
  // 可以类似的理解为多继承

  /**
   * Bicycle:
      安全系数 = low, 动力来源 = 全靠脚蹬, 动力组件 = 2个轮子

      Motorcycle:
      安全系数 = low, 动力来源 = 汽油, 动力组件 = 2个轮子

      Car:
      安全系数 = middle, 动力来源 = 汽油, 动力组件 = 4个轮子
   */
  Bicycle().transport();
  Motorcycle().transport();
  Car().transport();
}

abstract class Transportation {
  void transport();
}

/// 动力组件
abstract class TwoWheelsTransportation {
  String powerUnit() => '2个轮子';
}

abstract class FourWheelsTransportation {
  String powerUnit() => '4个轮子';
}

/// 安全系数
abstract class LowSafeIndexTransportation {
  String safeIndex() => 'low';
}

abstract class MiddleSafeIndexTransportation {
  String safeIndex() => 'middle';
}

/// 动力来源
abstract class FootTransportation {
  String energy() => '全靠脚蹬';
}

abstract class GasTransportation {
  String energy() => '汽油';
}

class Bicycle extends Transportation
    with
        TwoWheelsTransportation,
        LowSafeIndexTransportation,
        FootTransportation {
//  String safeIndex() => 'low';
//
//  String energy() => '全靠脚蹬';
//
//  String powerUnit() => '2个轮子';

  @override
  void transport() {
    print('''Bicycle: 
    safeIndex = ${safeIndex()}, energy = ${energy()}, powerUnit = ${powerUnit()}
    ''');
  }
}

class Motorcycle extends Transportation
    with
        TwoWheelsTransportation,
        LowSafeIndexTransportation,
        GasTransportation {
  @override
  void transport() {
    print('''Motorcycle: 
    safeIndex = ${safeIndex()}, energy = ${energy()}, powerUnit = ${powerUnit()}
    ''');
  }
}

class Car extends Transportation
    with
        MiddleSafeIndexTransportation,
        FourWheelsTransportation,
        GasTransportation {
  String safeIndex() => 'middle';

  String energy() => '汽油';

  String powerUnit() => '4个轮子';

  @override
  void transport() {
    print('''Car: 
    safeIndex = ${safeIndex()}, energy = ${energy()}, powerUnit = ${powerUnit()}
    ''');
  }
}
