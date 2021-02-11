import 'index.dart';

class ConstantDateTime implements DateTime {
  final String jsonDateTime;

  const ConstantDateTime(this.jsonDateTime);

  DateTime toDateTime() {
    if (this.jsonDateTime == null || this.jsonDateTime.isEmpty)
      throw new ConstantDateTimeException('JSON DateTime must be provided.');

    DateTime result = DateTime.tryParse(this.jsonDateTime);

    if (result == null)
      throw new ConstantDateTimeException(
          'Cannot parse JSON DateTime. Invalid format.');

    return result;
  }

  @override
  DateTime add(Duration duration) => throw UnimplementedError();

  @override
  int compareTo(DateTime other) => throw UnimplementedError();

  @override
  int get day => throw UnimplementedError();

  @override
  Duration difference(DateTime other) => throw UnimplementedError();

  @override
  int get hour => throw UnimplementedError();

  @override
  bool isAfter(DateTime other) => throw UnimplementedError();

  @override
  bool isAtSameMomentAs(DateTime other) => throw UnimplementedError();

  @override
  bool isBefore(DateTime other) => throw UnimplementedError();

  @override
  bool get isUtc => throw UnimplementedError();

  @override
  int get microsecond => throw UnimplementedError();

  @override
  int get microsecondsSinceEpoch => throw UnimplementedError();

  @override
  int get millisecond => throw UnimplementedError();

  @override
  int get millisecondsSinceEpoch => throw UnimplementedError();

  @override
  int get minute => throw UnimplementedError();

  @override
  int get month => throw UnimplementedError();

  @override
  int get second => throw UnimplementedError();

  @override
  DateTime subtract(Duration duration) => throw UnimplementedError();

  @override
  String get timeZoneName => throw UnimplementedError();

  @override
  Duration get timeZoneOffset => throw UnimplementedError();

  @override
  String toIso8601String() => throw UnimplementedError();

  @override
  DateTime toLocal() => throw UnimplementedError();

  @override
  DateTime toUtc() => throw UnimplementedError();

  @override
  int get weekday => throw UnimplementedError();

  @override
  int get year => throw UnimplementedError();
}
