main() {
  var cf = ClassFunction();
  var str = cf('A','b','C'); // 相当于cl.call('A','b','C')
  print('str = $str');
  print(cf.runtimeType); // ClassFunction
  print(str.runtimeType); // String
  print(cf is ClassFunction); // true
}

/// 可调用类: 方法名必须是call, 可以直接像方法一样调用
class ClassFunction {
  call(String a, String b, String c) => '$a $b $c!';
}
