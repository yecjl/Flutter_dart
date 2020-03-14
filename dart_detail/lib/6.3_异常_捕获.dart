main() {
//  test1();
//  test2();
//  test3();
//  test4();
  test5();

}

/// 1、try - catch(e)
test1() {
  try {
    throw NullThrownError();
  } catch (e) {
    print(e); // Throw of null.
  }
}

/// 2、try - catch(e,s)
test2() {
  try {
    throw NullThrownError();
  } catch (e, s) { // (异常对象，StackTrace对象)
    print(e); // Throw of null.
    print(s); // 打印错误栈，哪一行报错
  }
}

/// 3、try - on Error 只会抓取error异常
test3() {
  try {
    throw NullThrownError();
  } on Error {
    print("捕获error异常");
  } catch(e) {
    print(e);
  }
  print('------------------');

  try {
    throw NullThrownError();
  } on Error catch(e) {
    print("捕获error异常 = $e");
  } catch(e) {
    print(e);
  }
  print('------------------');

  try {
    throw NullThrownError();
  } on Error catch(e, s) {
    print("捕获error异常 = $e");
    print(s);
  } catch(e) {
    print(e);
  }
}

/// 4、try - on Exception 只会抓取exception异常
test4() {
  try {
    throw FormatException();
  } on Exception {
    print("捕获exception异常");
  } catch(e) {
    print(e);
  }
}

/// 5、try - on 具体异常
test5() {
  try {
    throw FormatException();
  } on FormatException {
    print("捕获FormatException异常");
  } catch(e) {
    print(e);
  }

  try {
    throw OutOfMemoryError();
  } on OutOfMemoryError {
    print("捕获OutOfMemoryError异常");
  } catch(e) {
    print(e);
  }
}
