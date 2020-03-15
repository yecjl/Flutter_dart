import 'package:dio/dio.dart';  /// 导入dio第三方库

main() {
  /// 1、https//pub.dartlang.org 上面搜索dart第三方库
  /// 2、搜索http -- 找到dio -- Installing 找到最新版本：dio: ^3.0.9
  /// 3、项目中 pubspec.yaml 文件 -- dependencies -- dio: ^3.0.9 -- 执行 package get
  doHttp();
}

void doHttp() async{
   try {
     Response response = await Dio().get('https://wwww.baidu.com');
     print(response);
   } catch (e) {
     print(e);
   }
}