import 'dart:async';
import 'dart:ui';

class Debouncer {
  final int _delay;
  Timer? _timer;

  Debouncer({int delay = 2000}) : _delay = delay;

  void debounce(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: _delay), action);
  }

  void dispose() {
    _timer?.cancel();
  }
}
