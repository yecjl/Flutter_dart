/// 1、导入文件
import '9.3_库_载入文件_test1.dart';

/// 2、指定库前缀
/// 如果两个库有冲突的标识符，可以为其中一个或两个库都指定前缀: as
import '9.3_库_载入文件_test1.dart' as lib1;
import '9.3_库_载入文件_test2.dart' as lib2;

/// 3、选择性导入文件：show 只载入库的某些部分
import '9.3_库_载入文件_test1.dart' as lib1 show loadFilePart1, loadFilePart2;

/// 4、选择性导入文件：hide 筛选掉库的某些部分
import '9.3_库_载入文件_test2.dart' as lib2 hide loadFilePart3;

/// 5、延迟载入 deferred as
import '9.3_库_载入文件_test1.dart' deferred as lazyLib;

/// 6、自定义库
/// (1) mylib.dart 设置为 library mylib;
/// (2) mylib.dart 添加分库 part 'tool.dart';
/// (3) tool.dart 设置为 part of 'mylib.dart'  作为library的一部分
import 'mylib/mylib.dart';

main() {
  lib1.loadFile(); /// 导入其他文件中的方法
  lib1.loadFilePart3();
  lib2.loadFilePart3();

  testCustom();  // 自定义库的使用

}

void testCustom() {
  printMyLib();
  printTool();
  printUtil();
}

/// 3、延迟载入library: 需要调用的时候才去加载文件、库，用于提高程序的启动速度
lazyLoad() async{
  await lazyLib.loadLibrary();
}
