import 'package:basis_app/core/network/error_message_model.dart';

class ServerException implements Exception {
  final String message;

  ServerException({required this.message});
}
