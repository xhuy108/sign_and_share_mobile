import 'package:dartz/dartz.dart';
import 'package:sign_and_share_mobile/core/errors/failures.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;
typedef DataMap = Map<String, dynamic>;
