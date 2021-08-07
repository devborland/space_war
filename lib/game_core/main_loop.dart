bool _running = true;

void startLoop() {
  const int _fps = 50;
  const int _second = 1000;
  const _updateTime = _second / _fps;

  int _updates = 0;

  final _loopWatch = Stopwatch();
  _loopWatch.start();

  final _timerWatch = Stopwatch();
  _timerWatch.start();

  while (_running) {
    if (_loopWatch.elapsedMilliseconds > _updateTime) {
      _updates++;
      _loopWatch.reset();
    }

    if (_timerWatch.elapsedMilliseconds > _second) {
      print('${DateTime.now()} FPS: $_updates');
      _updates = 0;
      _timerWatch.reset();
    }
  }
}

void stopLoop() {
  _running = false;
}
