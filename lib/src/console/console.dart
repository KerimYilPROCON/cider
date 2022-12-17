/// An abstraction over the command line interface.
class Console {
  Console(this.out, this.err);

  /// Standard error output.
  final ConsoleSink err;

  /// Standard output.
  final ConsoleSink out;
}

/// An output data stream such as stdout and stderr.
abstract class ConsoleSink implements StringSink {}

/// A [ConsoleSink] which writes the output into the [buffer].
/// This implementation is useful for testing.
class BufferSink implements ConsoleSink {
  /// Accumulated output.
  final buffer = StringBuffer();

  @override
  void write(Object? object) {
    buffer.write(object);
  }

  @override
  void writeAll(Iterable objects, [String separator = ""]) {
    buffer.writeAll(objects, separator);
  }

  @override
  void writeCharCode(int charCode) {
    buffer.writeCharCode(charCode);
  }

  @override
  void writeln([Object? object = ""]) {
    buffer.writeln(object);
  }
}
