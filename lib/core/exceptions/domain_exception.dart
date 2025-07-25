import 'custom_exception.dart';

class DomainException implements CustomException {
  const DomainException({this.message, required this.type});

  @override
  final String? message;

  @override
  final Object type;

  @override
  StackTrace? get stackTrace => StackTrace.current;
}
