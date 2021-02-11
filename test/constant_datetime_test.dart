import 'package:constant_datetime/constant_datetime.dart';
import 'package:flutter_test/flutter_test.dart';

import 'stubs/constant_datetime.dart';

void main() {
  test('ConstantDateTime instanciation is a success with a valid datetime.',
      () {
    ValidConstantDateTime stub = new ValidConstantDateTime();
    String jsonDateTime = stub.getJsonDateTime();
    ConstantDateTime constantDateTime = ConstantDateTime(jsonDateTime);
    DateTime dateTime = constantDateTime.toDateTime();
    expect(dateTime, new DateTime(2021, 1, 1));
  });

  test('ConstantDateTime instanciation is a failure with a valid datetime.',
      () {
    InvalidConstantDateTime stub = new InvalidConstantDateTime();
    String jsonDateTime = stub.getJsonDateTime();
    ConstantDateTime constantDateTime = ConstantDateTime(jsonDateTime);

    expect(
      () {
        constantDateTime.toDateTime();
      },
      throwsA(
        isA<ConstantDateTimeException>().having(
          (error) => error.message,
          'description',
          'Cannot parse JSON DateTime. Invalid format.',
        ),
      ),
    );
  });

  test('ConstantDateTime instanciation is a failure with a null datetime.', () {
    NullConstantDateTime stub = new NullConstantDateTime();
    String jsonDateTime = stub.getJsonDateTime();
    ConstantDateTime constantDateTime = ConstantDateTime(jsonDateTime);

    expect(
      () {
        constantDateTime.toDateTime();
      },
      throwsA(
        isA<ConstantDateTimeException>().having(
          (error) => error.message,
          'description',
          'JSON DateTime must be provided.',
        ),
      ),
    );
  });

  test('ConstantDateTime instanciation is a failure with an empty datetime.',
      () {
    EmptyConstantDateTime stub = new EmptyConstantDateTime();
    String jsonDateTime = stub.getJsonDateTime();
    ConstantDateTime constantDateTime = ConstantDateTime(jsonDateTime);

    expect(
      () => constantDateTime.toDateTime(),
      throwsA(
        isA<ConstantDateTimeException>().having(
          (error) => error.message,
          'description',
          'JSON DateTime must be provided.',
        ),
      ),
    );
  });
}
