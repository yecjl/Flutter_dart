main() {
  Singleton singleton = Singleton();
  print('name = ${singleton.name}');
}

/// 工厂方法构造函数 -- 单例
class Singleton {
  String name;
  static Singleton _cache; // 工厂构造函数无法访问this，所以这里要用static

  Singleton._newObject(this.name);  // 工厂方法构造函数，关键字factory

  // 工厂方法构造函数，关键字factory
  // 1、[name = 'Singleton']  可选位置参数
  // 2、??=  判空赋值
  factory Singleton([name = 'Singleton']) =>
      Singleton._cache ??= Singleton._newObject(name);

  // 上面是简写方式
//  factory Singleton([name = 'Singleton']) {
//    if(Singleton._cache == null) {
//      Singleton._cache = Singleton._newObject(name);
//    }
//    return Singleton._cache;
//  }
}
