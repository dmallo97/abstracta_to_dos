
import 'custom_exception.dart';

enum RequestExceptionType {
  badFormat,
  unauthorized,
  forbidden,
  notFound,
}

class RequestException implements CustomException {
  const RequestException({this.message, required this.type});

  factory RequestException.badFormat({String? message}) {
    return RequestException(
      type: RequestExceptionType.badFormat,
      message: message,
    );
  }

  @override
  final String? message;

  @override
  final RequestExceptionType type;

  int getStatusCode() {
    switch (type) {
      case RequestExceptionType.badFormat:
        return 400;
      default:
        return 400;
    }
  }

  @override
  StackTrace? get stackTrace => StackTrace.current;
}
