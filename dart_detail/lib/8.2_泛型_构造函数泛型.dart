main() {
  var phone = Phone<String>('159323823434');
  print(phone.mobileNumber);

}

class Phone<T> {
  final T mobileNumber;
  Phone(this.mobileNumber);

}