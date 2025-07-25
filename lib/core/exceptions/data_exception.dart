import 'custom_exception.dart';

class DataException implements CustomException {
  const DataException({this.message, required this.type});

  @override
  final String? message;

  @override
  final Object type;

  @override
  StackTrace? get stackTrace => StackTrace.current;
}
