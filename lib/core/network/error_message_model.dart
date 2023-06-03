import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable{
  final int statusCode;

  const ErrorMessageModel(this.statusCode);
  factory ErrorMessageModel.fromJson(Map<String ,dynamic> json)=>ErrorMessageModel(json['statusCode']);

  @override
  // TODO: implement props
  List<Object?> get props => [statusCode];
}