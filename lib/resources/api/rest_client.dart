
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'model/task.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "https://test.com/api/v1/")
abstract class RestClient {
  @factoryMethod
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/tasks")
  Future<List<Task>> getTasks();
}

