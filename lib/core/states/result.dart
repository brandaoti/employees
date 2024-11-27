sealed class Result<E, S> {
  const Result();
}

class Success<E, S> extends Result<E, S> {
  final S data;

  const Success(this.data);

  @override
  String toString() => 'Success(data: $data)';
}

class Failure<E, S> extends Result<E, S> {
  final E error;

  const Failure(this.error);

  @override
  String toString() => 'Failure(error: $error)';
}
