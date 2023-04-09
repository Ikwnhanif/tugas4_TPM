import 'dart:async';
import 'package:flutter/material.dart';

class StopwatchPage extends StatefulWidget {
  @override
  _StopwatchPageState createState() => _StopwatchPageState();
}

class _StopwatchPageState extends State<StopwatchPage> {
  Stopwatch _stopwatch = Stopwatch();
  Timer? _timer;
  bool _isRunning = false;

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stopwatch'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '${_stopwatch.elapsed.inMinutes.toString().padLeft(2, '0')}:${(_stopwatch.elapsed.inSeconds % 60).toString().padLeft(2, '0')}.${(_stopwatch.elapsed.inMilliseconds % 1000 / 10).toStringAsFixed(0).padLeft(2, '0')}',
              style: TextStyle(fontSize: 60.0),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _isRunning ? null : _startTimer,
                  child: Text('Start'),
                ),
                ElevatedButton(
                  onPressed: _isRunning ? _pauseTimer : null,
                  child: Text('Pause'),
                ),
                ElevatedButton(
                  onPressed: _resetTimer,
                  child: Text('Reset'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _startTimer() {
    setState(() {
      _isRunning = true;
      _stopwatch.start();
      _timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
        setState(() {});
      });
    });
  }

  void _pauseTimer() {
    setState(() {
      _isRunning = false;
      _stopwatch.stop();
      _timer?.cancel();
    });
  }

  void _resetTimer() {
    setState(() {
      _isRunning = false;
      _stopwatch.reset();
      _timer?.cancel();
    });
  }
}
