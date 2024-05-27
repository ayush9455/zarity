import 'dart:convert';

abstract class Failure {}

class ServerFailure extends Failure {
  final String? error;
  final String? code;
  final String? message;

  ServerFailure({
    this.error,
    this.code,
    this.message,
  });

  @override
  bool operator ==(covariant ServerFailure other) {
    if (identical(this, other)) return true;

    return other.error == error &&
        other.code == code &&
        other.message == message;
  }

  @override
  int get hashCode => error.hashCode ^ code.hashCode ^ message.hashCode;

  @override
  String toString() =>
      'ServerFailure(error: $error, code: $code, message: $message)';
}

class NoDataFailure extends Failure {
  final String? error;
  NoDataFailure({
    this.error,
  });
  @override
  bool operator ==(Object other) => other is NoDataFailure;

  @override
  int get hashCode => 0;
}

class CacheFailure extends Failure {
  @override
  bool operator ==(Object other) => other is CacheFailure;

  @override
  int get hashCode => 0;
}
