// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$PostApiService extends PostApiService {
  _$PostApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = PostApiService;

  Future<Response> getPost({int cityId}) {
    final $url = '/forecast/webservice/json/v1';
    final Map<String, dynamic> $params = {'city': cityId};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }
}
