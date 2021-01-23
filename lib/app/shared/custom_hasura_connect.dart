import 'package:hasura_cache_interceptor/hasura_cache_interceptor.dart';
import 'package:hasura_connect/hasura_connect.dart';

class CustomHasuraConnect {
  static HasuraConnect getConnect() {
    final storage = MemoryStorageService();
    final cacheInterceptor = CacheInterceptor(storage);
    //final cacheInterceptor = HiveCacheInterceptor();
    //final cacheInterceptor = SharedPreferencesCacheInterceptor();

    return HasuraConnect("http://app.limpalisboa.pt:4400/v1/graphql",
        interceptors: [cacheInterceptor],
        headers: {'x-hasura-admin-secret': 'kEGmv3RpA4Gt9tb3a8YyhncvB4aLwxLU'});
  }
}
