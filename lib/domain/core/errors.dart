import 'package:sample_app/domain/core/failures.dart';

class UnExpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnExpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point.Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
    // use safeToString help us toshow error message to any kind of comman line from old to new
  }
}
