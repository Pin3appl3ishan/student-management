import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure({required this.message});

  @override
  List<Object> get props => [message];
}

class LocalDatabseFailure extends Failure {
  const LocalDatabseFailure({required super.message});
}

class ApiFailure extends Failure {
  final int statusCode;

  const ApiFailure({required this.statusCode, required super.message});
}
