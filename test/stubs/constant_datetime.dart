abstract class IConstantDateTimeStub {
  String getJsonDateTime();
}

class ValidConstantDateTime extends IConstantDateTimeStub {
  @override
  String getJsonDateTime() => '2021-01-01T00:00:00.000';
}

class InvalidConstantDateTime extends IConstantDateTimeStub {
  @override
  String getJsonDateTime() => 'invalid date';
}

class NullConstantDateTime extends IConstantDateTimeStub {
  @override
  String getJsonDateTime() => null;
}

class EmptyConstantDateTime extends IConstantDateTimeStub {
  @override
  String getJsonDateTime() => '';
}
