import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../error/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class StringParam extends Equatable {
  final String param;

  const StringParam({required this.param});

  @override
  List<Object?> get props => [param];
}