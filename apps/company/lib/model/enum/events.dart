enum Events {
  jopFair111,
  jopFair222,
  jopFair333,
}

extension EventsExtension on Events {
  String get value {
    switch (this) {
      case Events.jopFair111:
        return 'jop Fair 111';
      case Events.jopFair222:
        return 'jop Fair 222';
      case Events.jopFair333:
        return 'jop Fair 333';
    }
  }

  static Events fromString(String? event) {
    switch (event) {
      case 'Jop Fair 111':
        return Events.jopFair111;
      case 'Jop Fair 222':
        return Events.jopFair222;
      case 'Jop Fair 333':
        return Events.jopFair333;

      default:
        throw ArgumentError('Invalid experience value');
    }
  }
}
