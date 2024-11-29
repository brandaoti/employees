import '../errors/base_exception.dart';

sealed class BaseState {}

class InitialState implements BaseState {}

class LoadingState implements BaseState {}

class SuccessState<S> implements BaseState {
  final S data;

  const SuccessState(this.data);

  @override
  String toString() => 'SuccessState(data: $data)';
}

class ErrorState<E extends BaseException> implements BaseState {
  final E error;

  const ErrorState(this.error);

  @override
  String toString() => 'ErrorState(error: $error)';
}
