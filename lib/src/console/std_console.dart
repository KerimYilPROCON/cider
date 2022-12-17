import 'dart:io';

import 'package:cider/src/console/console.dart';


class StdConsole extends Console {
  StdConsole() : super(IOSinkWrapper(stdout), IOSinkWrapper(stderr));
}

class IOSinkWrapper implements ConsoleSink {
  IOSinkWrapper(this._io);

  final IOSink _io;

  @override
  void write(Object? object) {
    _io.write(object);
  }

  @override
  void writeAll(Iterable objects, [String separator = ""]) {
    _io.writeAll(objects, separator);
  }

  @override
  void writeCharCode(int charCode) {
    _io.writeCharCode(charCode);
  }

  @override
  void writeln([Object? object = ""]) {
    _io.writeln(object);
  }
}
