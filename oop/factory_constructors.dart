void main() {
  var logger = new Logger('UI');
  logger.log('Button clicked');
}

class Logger {
  final String name;
  bool mute = false;

  // _cache is library-private, thanks to the _ in front
  // of its name.
  static final Map<String, Logger> _cache =
      <String, Logger>{};

  // 工厂构造方法可以有返回值 工厂构造函数无法访问 this
  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = new Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._internal(this.name); // 正常构造方法不能有返回值

  void log(String msg) {
    if (!mute) {
      print(msg);
    }
  }
}
