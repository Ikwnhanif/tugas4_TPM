import 'dart:async';
import 'package:flutter/material.dart';

class StopwatchApp extends StatefulWidget {
  @override
  _StopwatchAppState createState() => _StopwatchAppState();
}

class _StopwatchAppState extends State<StopwatchApp> {
  int _milliseconds = 0;
  bool _isRunning = false;
  late Stopwatch _stopwatch;

  @override
  void initState() {
    super.initState();
    _stopwatch = Stopwatch();
  }

  @override
  void dispose() {
    _stopwatch.stop();
    super.dispose();
  }

  void _onStartStop() {
    setState(() {
      if (_isRunning) {
        _stopwatch.stop();
        _isRunning = false;
      } else {
        _stopwatch.start();
        _isRunning = true;
        _updateTimer();
      }
    });
  }

  void _onReset() {
    setState(() {
      _milliseconds = 0;
      _isRunning = false;
      _stopwatch.reset();
    });
  }

  void _updateTimer() {
    Timer(Duration(milliseconds: 30), () {
      if (_isRunning) {
        setState(() {
          _milliseconds = _stopwatch.elapsedMilliseconds;
        });
        _updateTimer();
      }
    });
  }

  String _formatMilliseconds(int milliseconds) {
    int seconds = (milliseconds / 1000).truncate();
    int minutes = (seconds / 60).truncate();
    seconds %= 60;
    String minutesStr = '$minutes'.padLeft(2, '0');
    String secondsStr = '$seconds'.padLeft(2, '0');
    String millisecondsStr =
        '${(milliseconds % 1000).truncate()}'.padLeft(3, '0');
    return '$minutesStr:$secondsStr.$millisecondsStr';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stopwatch'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            _formatMilliseconds(_milliseconds),
            style: TextStyle(fontSize: 48.0),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _onStartStop,
                child: Text(_isRunning ? 'Stop' : 'Start'),
              ),
              SizedBox(width: 20.0),
              ElevatedButton(
                onPressed: _onReset,
                child: Text('Reset'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
