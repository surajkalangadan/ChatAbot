class ApiException implements Exception
{
  final statusCode;
  final message;
  ApiException(this.message,this.statusCode);
  String toString() {
    return message;
  }

}// TODO Implement this library.