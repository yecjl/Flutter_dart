main() {
  K addCache<K, V>(K key, V value) {
    K temp = key;
    print('$key : $value');
    return temp;
  }

  var key = addCache('name','danke');
  print(key);
}
