abstract class CustomException extends Error {
  CustomException({required this.type, this.message}) : super();
  final Object type;
  final String? message;
}
