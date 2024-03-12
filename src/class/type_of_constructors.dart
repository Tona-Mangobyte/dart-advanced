class Point {
  num x;
  num y;

  // Redirecting constructors
  Point(this.x, this.y);                // The main constructor for this class.
  Point.alongXAxis(num x) : this(x, 0); // Delegates to the main constructor.
}
class ImmutablePoint {
  final num x;
  final num y;
  // Constant constructors | A constant constructor can create a constant object by using the const keyword.
  const ImmutablePoint(this.x, this.y);
  static final ImmutablePoint origin = const ImmutablePoint(0, 0);
}

class Logger {
  final String name;
  bool mute = false;

  // _cache is library-private, thanks to the _ in front of its name.
  static final Map<String, Logger> _cache = <String, Logger>{};

  // Factory constructors
  factory Logger(String name) {
    final logger = new Logger._internal(name);
    _cache[name] = logger;
    return logger;
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) {
      print(msg);
    }
  }
}