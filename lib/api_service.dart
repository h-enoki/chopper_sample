import 'package:chopper/chopper.dart' ;

part "api_service.chopper.dart" ;

@ChopperApi (baseUrl : '/forecast/webservice/json/v1')
abstract class PostApiService extends ChopperService {

  static PostApiService create() {
    final client = ChopperClient(
      baseUrl: 'http://weather.livedoor.com',
      services: [
        _$PostApiService(),
      ],
      converter: JsonConverter(),
    );

    return _$PostApiService(client);
  }

  @Get(path: "")
  Future<Response> getPost({
    @Query('city') int cityId,
  });
}
