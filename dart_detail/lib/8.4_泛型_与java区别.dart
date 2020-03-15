main() {
  // Java中的泛型信息是编译时的，泛型信息在运行时是不存在的
  // Dart的泛型类型是固化的，在运行时也有可以判断的具体类型

  var list = List<String>();
  print(list is List<String>); // true
  print(list.runtimeType); // List<String>

}