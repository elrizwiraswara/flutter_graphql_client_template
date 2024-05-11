class GqlResult<T> {
  final T? data;
  final String? error;

  GqlResult._({this.data, this.error});

  factory GqlResult.success(T? data) => GqlResult._(data: data);

  factory GqlResult.error(String? error) => GqlResult._(error: error);

  bool get isSuccess => error == null;

  bool get isHasError => !isSuccess;
}
