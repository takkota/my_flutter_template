
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:my_flutter_template/resources/api/rest_client.dart';

@module
abstract class HttpModule {
  Dio get dio => Dio();
  RestClient get restClient => RestClient(dio);
}