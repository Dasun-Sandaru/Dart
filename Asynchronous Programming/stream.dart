
// stream.dart --- Streams in Dart --- About Streams in Dart

import 'dart:async';

void main(List<String> args) {
  StreamController _stcontroller = StreamController();

  Future<void> addStreamData() async {
    for (var i = 0; i < 10; i++) {
      await Future.delayed(Duration(seconds: 2));
      _stcontroller.sink.add(i);
    }
  }
}
